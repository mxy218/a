.class public Lcom/android/server/notification/NotificationShellCmd;
.super Landroid/os/ShellCommand;
.source "NotificationShellCmd.java"


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "shellcmd"

.field public static final CHANNEL_IMP:I = 0x3

.field public static final CHANNEL_NAME:Ljava/lang/String; = "Shell command"

.field public static final NOTIFICATION_ID:I = 0x472

.field public static final NOTIFICATION_PACKAGE:Ljava/lang/String; = "com.android.shell"

.field private static final NOTIFY_USAGE:Ljava/lang/String; = "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

.field private static final USAGE:Ljava/lang/String; = "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  suspend_package PACKAGE\n  unsuspend_package PACKAGE\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT"


# instance fields
.field private final mBinderService:Landroid/app/INotificationManager;

.field private final mDirectService:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 3
    .param p1, "service"  # Lcom/android/server/notification/NotificationManagerService;

    .line 101
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 103
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 104
    return-void
.end method

.method private doNotify(Ljava/io/PrintWriter;)I
    .registers 33
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 291
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 292
    .local v9, "context":Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 293
    .local v10, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/Notification$Builder;

    const-string/jumbo v3, "shellcmd"

    invoke-direct {v0, v9, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v11, v0

    .line 296
    .local v11, "builder":Landroid/app/Notification$Builder;
    const/4 v0, 0x0

    .line 297
    .local v0, "verbose":Z
    const/4 v3, 0x0

    .line 298
    .local v3, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    const/4 v4, 0x0

    .line 299
    .local v4, "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    const/4 v5, 0x0

    .line 300
    .local v5, "inboxStyle":Landroid/app/Notification$InboxStyle;
    const/4 v6, 0x0

    .line 301
    .local v6, "mediaStyle":Landroid/app/Notification$MediaStyle;
    const/4 v7, 0x0

    .line 303
    .local v7, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    const/4 v8, 0x0

    move v13, v0

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v6

    move-object v12, v8

    move-object v8, v5

    .line 304
    .end local v0  # "verbose":Z
    .end local v3  # "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .end local v4  # "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .end local v5  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v6  # "mediaStyle":Landroid/app/Notification$MediaStyle;
    .local v8, "inboxStyle":Landroid/app/Notification$InboxStyle;
    .local v12, "smallIcon":Landroid/graphics/drawable/Icon;
    .local v13, "verbose":Z
    .local v14, "bigPictureStyle":Landroid/app/Notification$BigPictureStyle;
    .local v15, "bigTextStyle":Landroid/app/Notification$BigTextStyle;
    .local v16, "mediaStyle":Landroid/app/Notification$MediaStyle;
    :goto_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .local v6, "opt":Ljava/lang/String;
    const-string/jumbo v3, "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

    if-eqz v0, :cond_4ab

    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "large":Z
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v17

    const/4 v5, 0x2

    sparse-switch v17, :sswitch_data_584

    :cond_38
    goto/16 :goto_194

    :sswitch_3a
    const-string/jumbo v4, "large-icon"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x9

    goto/16 :goto_195

    :sswitch_47
    const-string v4, "--verbose"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/4 v4, 0x1

    goto/16 :goto_195

    :sswitch_52
    const-string v4, "--line"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x18

    goto/16 :goto_195

    :sswitch_5e
    const-string v4, "--icon"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0xb

    goto/16 :goto_195

    :sswitch_6a
    const-string v4, "--help"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x1c

    goto/16 :goto_195

    :sswitch_76
    const-string v4, "--bigtext"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x15

    goto/16 :goto_195

    :sswitch_82
    const-string v4, "--bigText"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x14

    goto/16 :goto_195

    :sswitch_8e
    const-string v4, "--largeicon"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/4 v4, 0x7

    goto/16 :goto_195

    :sswitch_99
    const-string v4, "--intent"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x10

    goto/16 :goto_195

    :sswitch_a5
    const-string v4, "--picture"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x17

    goto/16 :goto_195

    :sswitch_b1
    const-string/jumbo v4, "largeicon"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x8

    goto/16 :goto_195

    :sswitch_be
    const-string v4, "--content-intent"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0xe

    goto/16 :goto_195

    :sswitch_ca
    const-string v4, "--big-text"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x16

    goto/16 :goto_195

    :sswitch_d6
    const-string/jumbo v4, "title"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/4 v4, 0x4

    goto/16 :goto_195

    :sswitch_e2
    const-string v4, "--wtf"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x1d

    goto/16 :goto_195

    :sswitch_ee
    const-string v4, "icon"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0xc

    goto/16 :goto_195

    :sswitch_fa
    const-string v4, "-v"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/4 v4, 0x0

    goto/16 :goto_195

    :sswitch_105
    const-string v4, "-t"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    move v4, v5

    goto/16 :goto_195

    :sswitch_110
    const-string v4, "-i"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0xa

    goto/16 :goto_195

    :sswitch_11c
    const-string v4, "-h"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x1b

    goto/16 :goto_195

    :sswitch_128
    const-string v4, "-c"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0xd

    goto :goto_195

    :sswitch_133
    const-string v4, "-S"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x12

    goto :goto_195

    :sswitch_13e
    const-string v4, "-I"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/4 v4, 0x5

    goto :goto_195

    :sswitch_148
    const-string v4, "--large-icon"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/4 v4, 0x6

    goto :goto_195

    :sswitch_152
    const-string v4, "--conversation"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x1a

    goto :goto_195

    :sswitch_15d
    const-string/jumbo v4, "intent"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x11

    goto :goto_195

    :sswitch_169
    const-string v4, "content-intent"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0xf

    goto :goto_195

    :sswitch_174
    const-string v4, "--title"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/4 v4, 0x3

    goto :goto_195

    :sswitch_17e
    const-string v4, "--style"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x13

    goto :goto_195

    :sswitch_189
    const-string v4, "--message"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v4, 0x19

    goto :goto_195

    :goto_194
    const/4 v4, -0x1

    :goto_195
    packed-switch v4, :pswitch_data_5fe

    .line 463
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    const/4 v3, 0x0

    return v3

    .line 453
    :pswitch_19d  #0x1a
    if-eqz v7, :cond_1ae

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 458
    move-object/from16 v20, v6

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    goto/16 :goto_49a

    .line 454
    :cond_1ae
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "--conversation requires --style messaging"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 435
    :pswitch_1b6  #0x19
    if-eqz v7, :cond_219

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, "arg":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, "parts":[Ljava/lang/String;
    array-length v5, v4

    move/from16 v23, v0

    const/4 v0, 0x1

    .end local v0  # "large":Z
    .local v23, "large":Z
    if-le v5, v0, :cond_1e1

    .line 442
    aget-object v0, v4, v0

    move-object/from16 v24, v6

    .end local v6  # "opt":Ljava/lang/String;
    .local v24, "opt":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v19, v3

    const/16 v18, 0x0

    .end local v3  # "arg":Ljava/lang/String;
    .local v19, "arg":Ljava/lang/String;
    aget-object v3, v4, v18

    invoke-virtual {v7, v0, v5, v6, v3}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v24

    goto/16 :goto_49a

    .line 445
    .end local v19  # "arg":Ljava/lang/String;
    .end local v24  # "opt":Ljava/lang/String;
    .restart local v3  # "arg":Ljava/lang/String;
    .restart local v6  # "opt":Ljava/lang/String;
    :cond_1e1
    move-object/from16 v19, v3

    move-object/from16 v24, v6

    const/16 v18, 0x0

    .end local v3  # "arg":Ljava/lang/String;
    .end local v6  # "opt":Ljava/lang/String;
    .restart local v19  # "arg":Ljava/lang/String;
    .restart local v24  # "opt":Ljava/lang/String;
    aget-object v0, v4, v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v20, v4

    const/4 v3, 0x2

    .end local v4  # "parts":[Ljava/lang/String;
    .local v20, "parts":[Ljava/lang/String;
    new-array v4, v3, [Ljava/lang/String;

    .line 447
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle;->getUserDisplayName()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v4, v18

    const-string v18, "Them"

    const/16 v17, 0x1

    aput-object v18, v4, v17

    .line 449
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    rem-int/lit8 v17, v17, 0x2

    aget-object v3, v4, v17

    .line 445
    invoke-virtual {v7, v0, v5, v6, v3}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 451
    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v24

    goto/16 :goto_49a

    .line 436
    .end local v19  # "arg":Ljava/lang/String;
    .end local v20  # "parts":[Ljava/lang/String;
    .end local v23  # "large":Z
    .end local v24  # "opt":Ljava/lang/String;
    .restart local v0  # "large":Z
    .restart local v6  # "opt":Ljava/lang/String;
    :cond_219
    move/from16 v23, v0

    .end local v0  # "large":Z
    .restart local v23  # "large":Z
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--message requires --style messaging"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    .end local v23  # "large":Z
    .restart local v0  # "large":Z
    :pswitch_223  #0x18
    move/from16 v23, v0

    move-object/from16 v24, v6

    .end local v0  # "large":Z
    .end local v6  # "opt":Ljava/lang/String;
    .restart local v23  # "large":Z
    .restart local v24  # "opt":Ljava/lang/String;
    if-eqz v8, :cond_238

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 433
    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v24

    goto/16 :goto_49a

    .line 430
    :cond_238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--line requires --style inbox"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    .end local v23  # "large":Z
    .end local v24  # "opt":Ljava/lang/String;
    .restart local v0  # "large":Z
    .restart local v6  # "opt":Ljava/lang/String;
    :pswitch_240  #0x17
    move/from16 v23, v0

    move-object/from16 v24, v6

    .end local v0  # "large":Z
    .end local v6  # "opt":Ljava/lang/String;
    .restart local v23  # "large":Z
    .restart local v24  # "opt":Ljava/lang/String;
    if-eqz v14, :cond_29d

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "pictureSpec":Ljava/lang/String;
    invoke-virtual {v1, v10, v0}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 418
    .local v3, "pictureAsIcon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_284

    .line 421
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 422
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    instance-of v5, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_26a

    .line 423
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v24

    goto/16 :goto_49a

    .line 425
    :cond_26a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    .end local v3  # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    .local v17, "pictureAsIcon":Landroid/graphics/drawable/Icon;
    const-string/jumbo v3, "not a bitmap: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 419
    .end local v4  # "d":Landroid/graphics/drawable/Drawable;
    .end local v17  # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    .restart local v3  # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    :cond_284
    move-object/from16 v17, v3

    .end local v3  # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    .restart local v17  # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad picture spec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 414
    .end local v0  # "pictureSpec":Ljava/lang/String;
    .end local v17  # "pictureAsIcon":Landroid/graphics/drawable/Icon;
    :cond_29d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--picture requires --style bigpicture"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    .end local v23  # "large":Z
    .end local v24  # "opt":Ljava/lang/String;
    .local v0, "large":Z
    .restart local v6  # "opt":Ljava/lang/String;
    :pswitch_2a5  #0x14, 0x15, 0x16
    move/from16 v23, v0

    move-object/from16 v24, v6

    .end local v0  # "large":Z
    .end local v6  # "opt":Ljava/lang/String;
    .restart local v23  # "large":Z
    .restart local v24  # "opt":Ljava/lang/String;
    if-eqz v15, :cond_2ba

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 411
    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v24

    goto/16 :goto_49a

    .line 408
    :cond_2ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--bigtext requires --style bigtext"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    .end local v23  # "large":Z
    .end local v24  # "opt":Ljava/lang/String;
    .restart local v0  # "large":Z
    .restart local v6  # "opt":Ljava/lang/String;
    :pswitch_2c2  #0x12, 0x13
    move/from16 v23, v0

    move-object/from16 v24, v6

    .end local v0  # "large":Z
    .end local v6  # "opt":Ljava/lang/String;
    .restart local v23  # "large":Z
    .restart local v24  # "opt":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "styleSpec":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_638

    :cond_2d5
    goto :goto_30b

    :sswitch_2d6
    const-string/jumbo v3, "media"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d5

    const/4 v3, 0x4

    goto :goto_30c

    :sswitch_2e1
    const-string/jumbo v3, "inbox"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d5

    const/4 v3, 0x2

    goto :goto_30c

    :sswitch_2ec
    const-string v3, "bigpicture"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d5

    const/4 v3, 0x1

    goto :goto_30c

    :sswitch_2f6
    const-string v3, "bigtext"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d5

    const/4 v3, 0x0

    goto :goto_30c

    :sswitch_300
    const-string/jumbo v3, "messaging"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d5

    const/4 v3, 0x3

    goto :goto_30c

    :goto_30b
    const/4 v3, -0x1

    :goto_30c
    if-eqz v3, :cond_37d

    const/4 v4, 0x1

    if-eq v3, v4, :cond_373

    const/4 v4, 0x2

    if-eq v3, v4, :cond_369

    const/4 v4, 0x3

    if-eq v3, v4, :cond_33d

    const/4 v4, 0x4

    if-ne v3, v4, :cond_325

    .line 398
    new-instance v3, Landroid/app/Notification$MediaStyle;

    invoke-direct {v3}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 399
    .end local v16  # "mediaStyle":Landroid/app/Notification$MediaStyle;
    .local v3, "mediaStyle":Landroid/app/Notification$MediaStyle;
    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 400
    move-object/from16 v16, v3

    goto :goto_387

    .line 402
    .end local v3  # "mediaStyle":Landroid/app/Notification$MediaStyle;
    .restart local v16  # "mediaStyle":Landroid/app/Notification$MediaStyle;
    :cond_325
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unrecognized notification style: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 388
    :cond_33d
    const-string v3, "You"

    .line 389
    .local v3, "name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v4

    const-string v5, "--user"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_352

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 393
    :cond_352
    new-instance v4, Landroid/app/Notification$MessagingStyle;

    new-instance v5, Landroid/app/Person$Builder;

    invoke-direct {v5}, Landroid/app/Person$Builder;-><init>()V

    .line 394
    invoke-virtual {v5, v3}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    move-object v7, v4

    .line 395
    invoke-virtual {v11, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 396
    goto :goto_387

    .line 384
    .end local v3  # "name":Ljava/lang/String;
    :cond_369
    new-instance v3, Landroid/app/Notification$InboxStyle;

    invoke-direct {v3}, Landroid/app/Notification$InboxStyle;-><init>()V

    move-object v8, v3

    .line 385
    invoke-virtual {v11, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 386
    goto :goto_387

    .line 380
    :cond_373
    new-instance v3, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    move-object v14, v3

    .line 381
    invoke-virtual {v11, v14}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 382
    goto :goto_387

    .line 376
    :cond_37d
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object v15, v3

    .line 377
    invoke-virtual {v11, v15}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 378
    nop

    .line 405
    :goto_387
    move-object/from16 v20, v24

    goto/16 :goto_4a9

    .line 344
    .end local v23  # "large":Z
    .end local v24  # "opt":Ljava/lang/String;
    .local v0, "large":Z
    .restart local v6  # "opt":Ljava/lang/String;
    :pswitch_38b  #0xd, 0xe, 0xf, 0x10, 0x11
    move/from16 v23, v0

    move-object/from16 v24, v6

    .end local v0  # "large":Z
    .end local v6  # "opt":Ljava/lang/String;
    .restart local v23  # "large":Z
    .restart local v24  # "opt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 345
    .local v0, "intentKind":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x62b40cf1

    const-string/jumbo v6, "service"

    move-object/from16 v19, v0

    .end local v0  # "intentKind":Ljava/lang/String;
    .local v19, "intentKind":Ljava/lang/String;
    const-string v0, "broadcast"

    if-eq v4, v5, :cond_3bf

    const v5, -0x607e173f

    if-eq v4, v5, :cond_3b7

    const v5, 0x7643c6b5

    if-eq v4, v5, :cond_3af

    :cond_3ae
    goto :goto_3c9

    :cond_3af
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3ae

    const/4 v3, 0x1

    goto :goto_3ca

    :cond_3b7
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3ae

    const/4 v3, 0x0

    goto :goto_3ca

    :cond_3bf
    const-string v4, "activity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3ae

    const/4 v3, 0x2

    goto :goto_3ca

    :goto_3c9
    const/4 v3, -0x1

    :goto_3ca
    if-eqz v3, :cond_3d5

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3d5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3d5

    move-object/from16 v5, v19

    goto :goto_3da

    .line 349
    :cond_3d5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    .line 351
    .end local v19  # "intentKind":Ljava/lang/String;
    .local v5, "intentKind":Ljava/lang/String;
    :goto_3da
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v4

    .line 352
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_407

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v7

    .end local v7  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .local v17, "messagingStyle":Landroid/app/Notification$MessagingStyle;
    const-string/jumbo v7, "xyz:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v8

    .end local v8  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .local v19, "inboxStyle":Landroid/app/Notification$InboxStyle;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_40b

    .line 352
    .end local v17  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v19  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v7  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :cond_407
    move-object/from16 v17, v7

    move-object/from16 v19, v8

    .line 357
    .end local v7  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v17  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :goto_40b
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v3, 0x8000000

    if-eqz v0, :cond_421

    .line 358
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-static {v9, v7, v4, v3, v0}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v3, v0

    move-object/from16 v18, v4

    move-object v0, v5

    move-object/from16 v20, v24

    .local v0, "pi":Landroid/app/PendingIntent;
    goto :goto_446

    .line 361
    .end local v0  # "pi":Landroid/app/PendingIntent;
    :cond_421
    const/4 v7, 0x0

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_433

    .line 362
    invoke-static {v9, v7, v4, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v3, v0

    move-object/from16 v18, v4

    move-object v0, v5

    move-object/from16 v20, v24

    .restart local v0  # "pi":Landroid/app/PendingIntent;
    goto :goto_446

    .line 365
    .end local v0  # "pi":Landroid/app/PendingIntent;
    :cond_433
    const/4 v0, 0x0

    const/high16 v6, 0x8000000

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v3, v9

    move-object/from16 v18, v4

    .end local v4  # "intent":Landroid/content/Intent;
    .local v18, "intent":Landroid/content/Intent;
    move v4, v0

    move-object v0, v5

    .end local v5  # "intentKind":Ljava/lang/String;
    .local v0, "intentKind":Ljava/lang/String;
    move-object/from16 v5, v18

    move-object/from16 v20, v24

    .end local v24  # "opt":Ljava/lang/String;
    .local v20, "opt":Ljava/lang/String;
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 369
    .local v3, "pi":Landroid/app/PendingIntent;
    :goto_446
    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 370
    goto :goto_49a

    .line 306
    .end local v3  # "pi":Landroid/app/PendingIntent;
    .end local v17  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v18  # "intent":Landroid/content/Intent;
    .end local v19  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v20  # "opt":Ljava/lang/String;
    .end local v23  # "large":Z
    .local v0, "large":Z
    .restart local v6  # "opt":Ljava/lang/String;
    .restart local v7  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :pswitch_44a  #0xa, 0xb, 0xc
    move/from16 v23, v0

    move-object/from16 v20, v6

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    .end local v0  # "large":Z
    .end local v6  # "opt":Ljava/lang/String;
    .end local v7  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v17  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v20  # "opt":Ljava/lang/String;
    .restart local v23  # "large":Z
    goto :goto_45c

    .line 321
    .end local v17  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v19  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v20  # "opt":Ljava/lang/String;
    .end local v23  # "large":Z
    .restart local v0  # "large":Z
    .restart local v6  # "opt":Ljava/lang/String;
    .restart local v7  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :pswitch_453  #0x5, 0x6, 0x7, 0x8, 0x9
    move/from16 v23, v0

    move-object/from16 v20, v6

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    .end local v0  # "large":Z
    .end local v6  # "opt":Ljava/lang/String;
    .end local v7  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v17  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v20  # "opt":Ljava/lang/String;
    .restart local v23  # "large":Z
    const/4 v0, 0x1

    .line 326
    .end local v23  # "large":Z
    .restart local v0  # "large":Z
    :goto_45c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "iconSpec":Ljava/lang/String;
    invoke-virtual {v1, v10, v3}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 328
    .local v4, "icon":Landroid/graphics/drawable/Icon;
    if-nez v4, :cond_47c

    .line 329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error: invalid icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    const/4 v5, -0x1

    return v5

    .line 332
    :cond_47c
    if-eqz v0, :cond_483

    .line 333
    invoke-virtual {v11, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 334
    const/4 v0, 0x0

    goto :goto_49a

    .line 336
    :cond_483
    move-object v5, v4

    .line 338
    .end local v12  # "smallIcon":Landroid/graphics/drawable/Icon;
    .local v5, "smallIcon":Landroid/graphics/drawable/Icon;
    move-object v12, v5

    move-object/from16 v7, v17

    move-object/from16 v8, v19

    goto :goto_4a9

    .line 314
    .end local v3  # "iconSpec":Ljava/lang/String;
    .end local v4  # "icon":Landroid/graphics/drawable/Icon;
    .end local v5  # "smallIcon":Landroid/graphics/drawable/Icon;
    .end local v17  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v19  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v20  # "opt":Ljava/lang/String;
    .restart local v6  # "opt":Ljava/lang/String;
    .restart local v7  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v12  # "smallIcon":Landroid/graphics/drawable/Icon;
    :pswitch_48a  #0x2, 0x3, 0x4
    move/from16 v23, v0

    move-object/from16 v20, v6

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    .end local v0  # "large":Z
    .end local v6  # "opt":Ljava/lang/String;
    .end local v7  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v17  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v20  # "opt":Ljava/lang/String;
    .restart local v23  # "large":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 315
    nop

    .line 466
    .end local v23  # "large":Z
    :goto_49a
    move-object/from16 v7, v17

    move-object/from16 v8, v19

    goto :goto_4a9

    .line 309
    .end local v17  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v19  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v20  # "opt":Ljava/lang/String;
    .restart local v0  # "large":Z
    .restart local v6  # "opt":Ljava/lang/String;
    .restart local v7  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    :pswitch_49f  #0x0, 0x1
    move/from16 v23, v0

    move-object/from16 v20, v6

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    .end local v0  # "large":Z
    .end local v6  # "opt":Ljava/lang/String;
    .end local v7  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v17  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v20  # "opt":Ljava/lang/String;
    .restart local v23  # "large":Z
    const/4 v0, 0x1

    .line 310
    .end local v13  # "verbose":Z
    .local v0, "verbose":Z
    move v13, v0

    .line 466
    .end local v0  # "verbose":Z
    .end local v17  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v19  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .end local v23  # "large":Z
    .restart local v7  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v8  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v13  # "verbose":Z
    :goto_4a9
    goto/16 :goto_25

    .line 468
    .end local v20  # "opt":Ljava/lang/String;
    .restart local v6  # "opt":Ljava/lang/String;
    :cond_4ab
    move-object/from16 v20, v6

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    .end local v6  # "opt":Ljava/lang/String;
    .end local v7  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .end local v8  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v17  # "messagingStyle":Landroid/app/Notification$MessagingStyle;
    .restart local v19  # "inboxStyle":Landroid/app/Notification$InboxStyle;
    .restart local v20  # "opt":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, "tag":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 470
    .local v5, "text":Ljava/lang/String;
    if-eqz v4, :cond_57c

    if-nez v5, :cond_4c1

    move-object/from16 v22, v5

    goto/16 :goto_57e

    .line 475
    :cond_4c1
    invoke-virtual {v11, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 477
    if-nez v12, :cond_4cd

    .line 479
    const v0, 0x1080077

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_4d0

    .line 481
    :cond_4cd
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 484
    :goto_4d0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->ensureChannel()V

    .line 486
    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 487
    .local v3, "n":Landroid/app/Notification;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "posting:\n  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "posting: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "NotificationManager"

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 491
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 493
    .local v7, "token":J
    :try_start_50b
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const-string v25, "com.android.shell"

    const-string v26, "android"

    const/16 v28, 0x472

    move-object/from16 v24, v0

    move-object/from16 v27, v4

    move-object/from16 v29, v3

    move/from16 v30, v6

    invoke-interface/range {v24 .. v30}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_51e
    .catchall {:try_start_50b .. :try_end_51e} :catchall_573

    .line 498
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 499
    nop

    .line 501
    if-eqz v13, :cond_56d

    .line 502
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v18, v3

    .end local v3  # "n":Landroid/app/Notification;
    .local v18, "n":Landroid/app/Notification;
    const/16 v3, 0x472

    move-object/from16 v22, v5

    .end local v5  # "text":Ljava/lang/String;
    .local v22, "text":Ljava/lang/String;
    const-string v5, "com.android.shell"

    invoke-virtual {v0, v5, v4, v3, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 504
    .local v0, "nr":Lcom/android/server/notification/NotificationRecord;
    const/16 v23, 0x3

    move-object v3, v0

    .end local v0  # "nr":Lcom/android/server/notification/NotificationRecord;
    .local v3, "nr":Lcom/android/server/notification/NotificationRecord;
    .local v23, "tries":I
    :goto_535
    add-int/lit8 v25, v23, -0x1

    .end local v23  # "tries":I
    .local v25, "tries":I
    if-lez v23, :cond_556

    .line 505
    if-eqz v3, :cond_53c

    goto :goto_556

    .line 507
    :cond_53c
    :try_start_53c
    const-string/jumbo v0, "waiting for notification to post..."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    const-wide/16 v26, 0x1f4

    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V
    :try_end_547
    .catch Ljava/lang/InterruptedException; {:try_start_53c .. :try_end_547} :catch_548

    .line 510
    goto :goto_549

    .line 509
    :catch_548
    move-exception v0

    .line 511
    :goto_549
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    const/16 v1, 0x472

    invoke-virtual {v0, v5, v4, v1, v6}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v3

    move-object/from16 v1, p0

    move/from16 v23, v25

    goto :goto_535

    .line 514
    .end local v25  # "tries":I
    :cond_556
    :goto_556
    if-nez v3, :cond_560

    .line 515
    const-string/jumbo v0, "warning: couldn\'t find notification after enqueueing"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_572

    .line 517
    :cond_560
    const-string/jumbo v0, "posted: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    const-string v0, "  "

    const/4 v1, 0x0

    invoke-virtual {v3, v2, v0, v9, v1}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_572

    .line 501
    .end local v18  # "n":Landroid/app/Notification;
    .end local v22  # "text":Ljava/lang/String;
    .local v3, "n":Landroid/app/Notification;
    .restart local v5  # "text":Ljava/lang/String;
    :cond_56d
    move-object/from16 v18, v3

    move-object/from16 v22, v5

    const/4 v1, 0x0

    .line 522
    .end local v3  # "n":Landroid/app/Notification;
    .end local v5  # "text":Ljava/lang/String;
    .restart local v18  # "n":Landroid/app/Notification;
    .restart local v22  # "text":Ljava/lang/String;
    :goto_572
    return v1

    .line 498
    .end local v18  # "n":Landroid/app/Notification;
    .end local v22  # "text":Ljava/lang/String;
    .restart local v3  # "n":Landroid/app/Notification;
    .restart local v5  # "text":Ljava/lang/String;
    :catchall_573
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v22, v5

    .end local v3  # "n":Landroid/app/Notification;
    .end local v5  # "text":Ljava/lang/String;
    .restart local v18  # "n":Landroid/app/Notification;
    .restart local v22  # "text":Ljava/lang/String;
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 470
    .end local v6  # "userId":I
    .end local v7  # "token":J
    .end local v18  # "n":Landroid/app/Notification;
    .end local v22  # "text":Ljava/lang/String;
    .restart local v5  # "text":Ljava/lang/String;
    :cond_57c
    move-object/from16 v22, v5

    .line 471
    .end local v5  # "text":Ljava/lang/String;
    .restart local v22  # "text":Ljava/lang/String;
    :goto_57e
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    const/4 v0, -0x1

    return v0

    nop

    :sswitch_data_584
    .sparse-switch
        -0x74789999 -> :sswitch_189
        -0x603263ef -> :sswitch_17e
        -0x60295f48 -> :sswitch_174
        -0x4821dd90 -> :sswitch_169
        -0x468ec964 -> :sswitch_15d
        -0x32dd8ddd -> :sswitch_152
        -0x2bc1295 -> :sswitch_148
        0x5bc -> :sswitch_13e
        0x5c6 -> :sswitch_133
        0x5d6 -> :sswitch_128
        0x5db -> :sswitch_11c
        0x5dc -> :sswitch_110
        0x5e7 -> :sswitch_105
        0x5e9 -> :sswitch_fa
        0x313c79 -> :sswitch_ee
        0x2906389 -> :sswitch_e2
        0x6942258 -> :sswitch_d6
        0x2a056f7a -> :sswitch_ca
        0x2a13d010 -> :sswitch_be
        0x2d3ae234 -> :sswitch_b1
        0x302cc35e -> :sswitch_a5
        0x487e843c -> :sswitch_99
        0x4a573094 -> :sswitch_8e
        0x4bbf1cad -> :sswitch_82
        0x4bcda88d -> :sswitch_76
        0x4f7504e1 -> :sswitch_6a
        0x4f757219 -> :sswitch_5e
        0x4f76e594 -> :sswitch_52
        0x6789dfe2 -> :sswitch_47
        0x76d66fcb -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_5fe
    .packed-switch 0x0
        :pswitch_49f  #00000000
        :pswitch_49f  #00000001
        :pswitch_48a  #00000002
        :pswitch_48a  #00000003
        :pswitch_48a  #00000004
        :pswitch_453  #00000005
        :pswitch_453  #00000006
        :pswitch_453  #00000007
        :pswitch_453  #00000008
        :pswitch_453  #00000009
        :pswitch_44a  #0000000a
        :pswitch_44a  #0000000b
        :pswitch_44a  #0000000c
        :pswitch_38b  #0000000d
        :pswitch_38b  #0000000e
        :pswitch_38b  #0000000f
        :pswitch_38b  #00000010
        :pswitch_38b  #00000011
        :pswitch_2c2  #00000012
        :pswitch_2c2  #00000013
        :pswitch_2a5  #00000014
        :pswitch_2a5  #00000015
        :pswitch_2a5  #00000016
        :pswitch_240  #00000017
        :pswitch_223  #00000018
        :pswitch_1b6  #00000019
        :pswitch_19d  #0000001a
    .end packed-switch

    :sswitch_data_638
    .sparse-switch
        -0x55d4c8fc -> :sswitch_300
        -0x6cebdd3 -> :sswitch_2f6
        -0x2a7c002 -> :sswitch_2ec
        0x5fb2286 -> :sswitch_2e1
        0x62f6fe4 -> :sswitch_2d6
    .end sparse-switch
.end method


# virtual methods
.method ensureChannel()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    const-string v0, "NotificationService"

    const-string/jumbo v1, "shellcmd"

    const-string v2, "com.android.shell"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 243
    .local v3, "uid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 244
    .local v4, "userid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 246
    .local v5, "token":J
    :try_start_13
    iget-object v7, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v8, 0x0

    invoke-interface {v7, v2, v3, v1, v8}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v7

    if-nez v7, :cond_70

    .line 248
    new-instance v7, Landroid/app/NotificationChannel;

    const-string v9, "Shell command"

    const/4 v10, 0x3

    invoke-direct {v7, v1, v9, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 250
    .local v7, "chan":Landroid/app/NotificationChannel;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "creating shell channel for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v9, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    new-instance v10, Landroid/content/pm/ParceledListSlice;

    .line 254
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 252
    invoke-interface {v9, v2, v3, v10}, Landroid/app/INotificationManager;->createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    .line 255
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "created channel: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 256
    invoke-interface {v10, v2, v3, v1, v8}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_13 .. :try_end_70} :catchall_75

    .line 260
    .end local v7  # "chan":Landroid/app/NotificationChannel;
    :cond_70
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    nop

    .line 262
    return-void

    .line 260
    :catchall_75
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 9
    .param p1, "cmd"  # Ljava/lang/String;

    .line 108
    if-nez p1, :cond_7

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 111
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 113
    .local v0, "pw":Ljava/io/PrintWriter;
    const/16 v1, 0x2d

    const/16 v2, 0x5f

    const/4 v3, 0x0

    :try_start_10
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_232

    :cond_1d
    goto/16 :goto_af

    :sswitch_1f
    const-string v2, "allow_assistant"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x4

    goto/16 :goto_b0

    :sswitch_2a
    const-string v2, "distract_package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/16 v1, 0x8

    goto/16 :goto_b0

    :sswitch_36
    const-string v2, "disallow_listener"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x3

    goto/16 :goto_b0

    :sswitch_41
    const-string/jumbo v2, "reset_assistant_user_set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/16 v1, 0x9

    goto/16 :goto_b0

    :sswitch_4e
    const-string/jumbo v2, "suspend_package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x6

    goto :goto_b0

    :sswitch_59
    const-string v2, "allow_dnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move v1, v3

    goto :goto_b0

    :sswitch_63
    const-string/jumbo v2, "post"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/16 v1, 0xb

    goto :goto_b0

    :sswitch_6f
    const-string v2, "get_approved_assistant"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/16 v1, 0xa

    goto :goto_b0

    :sswitch_7a
    const-string v2, "disallow_dnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move v1, v4

    goto :goto_b0

    :sswitch_84
    const-string v2, "allow_listener"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x2

    goto :goto_b0

    :sswitch_8e
    const-string/jumbo v2, "unsuspend_package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x7

    goto :goto_b0

    :sswitch_99
    const-string/jumbo v2, "notify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/16 v1, 0xc

    goto :goto_b0

    :sswitch_a5
    const-string v2, "disallow_assistant"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_ab} :catch_211

    if-eqz v1, :cond_1d

    const/4 v1, 0x5

    goto :goto_b0

    :goto_af
    move v1, v5

    :goto_b0
    const-string v2, "Invalid assistant - must be a ComponentName"

    const-string v6, "Invalid listener - must be a ComponentName"

    packed-switch v1, :pswitch_data_268

    .line 232
    :try_start_b7
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_210

    .line 229
    :pswitch_bd  #0xb, 0xc
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationShellCmd;->doNotify(Ljava/io/PrintWriter;)I

    .line 230
    goto/16 :goto_20f

    .line 215
    :pswitch_c2  #0xa
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 216
    .local v1, "userId":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d5

    .line 217
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v1, v2

    .line 219
    :cond_d5
    iget-object v2, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->getApprovedAssistant(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 220
    .local v2, "approvedAssistant":Landroid/content/ComponentName;
    if-nez v2, :cond_e5

    .line 221
    const-string/jumbo v4, "null"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_20f

    .line 223
    :cond_e5
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    goto/16 :goto_20f

    .line 207
    .end local v1  # "userId":I
    .end local v2  # "approvedAssistant":Landroid/content/ComponentName;
    :pswitch_ee  #0x9
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 208
    .restart local v1  # "userId":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_101

    .line 209
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v1, v2

    .line 211
    :cond_101
    iget-object v2, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->resetAssistantUserSet(I)V

    .line 212
    goto/16 :goto_20f

    .line 201
    .end local v1  # "userId":I
    :pswitch_108  #0x8
    iget-object v1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 202
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 203
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 201
    invoke-virtual {v1, v2, v4}, Lcom/android/server/notification/NotificationManagerService;->simulatePackageDistractionBroadcast(I[Ljava/lang/String;)V

    .line 204
    goto/16 :goto_20f

    .line 194
    :pswitch_121  #0x7
    iget-object v1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/server/notification/NotificationManagerService;->simulatePackageSuspendBroadcast(ZLjava/lang/String;)V

    .line 196
    goto/16 :goto_20f

    .line 189
    :pswitch_12c  #0x6
    iget-object v1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/android/server/notification/NotificationManagerService;->simulatePackageSuspendBroadcast(ZLjava/lang/String;)V

    .line 191
    goto/16 :goto_20f

    .line 175
    :pswitch_137  #0x5
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 176
    .local v1, "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_145

    .line 177
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    return v5

    .line 180
    :cond_145
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 181
    .local v2, "userId":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_158

    .line 182
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 184
    :cond_158
    iget-object v4, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v4, v1, v2, v3}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 186
    .end local v1  # "cn":Landroid/content/ComponentName;
    .end local v2  # "userId":I
    goto/16 :goto_20f

    .line 162
    :pswitch_15f  #0x4
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 163
    .restart local v1  # "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_16d

    .line 164
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    return v5

    .line 167
    :cond_16d
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 168
    .restart local v2  # "userId":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_180

    .line 169
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 171
    :cond_180
    iget-object v5, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v5, v1, v2, v4}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 173
    .end local v1  # "cn":Landroid/content/ComponentName;
    .end local v2  # "userId":I
    goto/16 :goto_20f

    .line 149
    :pswitch_187  #0x3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 150
    .restart local v1  # "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_195

    .line 151
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    return v5

    .line 154
    :cond_195
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 155
    .restart local v2  # "userId":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1a8

    .line 156
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 158
    :cond_1a8
    iget-object v4, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v4, v1, v2, v3}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 160
    .end local v1  # "cn":Landroid/content/ComponentName;
    .end local v2  # "userId":I
    goto :goto_20f

    .line 136
    :pswitch_1ae  #0x2
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 137
    .restart local v1  # "cn":Landroid/content/ComponentName;
    if-nez v1, :cond_1bc

    .line 138
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    return v5

    .line 141
    :cond_1bc
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 142
    .restart local v2  # "userId":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1cf

    .line 143
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 145
    :cond_1cf
    iget-object v5, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v5, v1, v2, v4}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 147
    .end local v1  # "cn":Landroid/content/ComponentName;
    .end local v2  # "userId":I
    goto :goto_20f

    .line 126
    :pswitch_1d5  #0x1
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 128
    .restart local v2  # "userId":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1ec

    .line 129
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 131
    :cond_1ec
    iget-object v4, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v4, v1, v2, v3}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 134
    .end local v1  # "packageName":Ljava/lang/String;
    .end local v2  # "userId":I
    goto :goto_20f

    .line 115
    :pswitch_1f2  #0x0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 116
    .restart local v1  # "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 117
    .restart local v2  # "userId":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_209

    .line 118
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 120
    :cond_209
    iget-object v5, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v5, v1, v2, v4}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V
    :try_end_20e
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_20e} :catch_211

    .line 123
    .end local v1  # "packageName":Ljava/lang/String;
    .end local v2  # "userId":I
    nop

    .line 237
    :goto_20f
    goto :goto_231

    .line 232
    :goto_210
    return v1

    .line 234
    :catch_211
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred. Check logcat for details. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    const-string v2, "NotificationService"

    const-string v4, "Error running shell command"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_231
    return v3

    :sswitch_data_232
    .sparse-switch
        -0x4f05a8e6 -> :sswitch_a5
        -0x3df868b7 -> :sswitch_99
        -0x1e34b476 -> :sswitch_8e
        -0x19cf0b16 -> :sswitch_84
        -0x199eb9aa -> :sswitch_7a
        -0x18b58921 -> :sswitch_6f
        0x3498a0 -> :sswitch_63
        0x16318b24 -> :sswitch_59
        0x177b7f43 -> :sswitch_4e
        0x28bd431f -> :sswitch_41
        0x4af068f8 -> :sswitch_36
        0x5d9b0a8d -> :sswitch_2a
        0x7dcb4968 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_268
    .packed-switch 0x0
        :pswitch_1f2  #00000000
        :pswitch_1d5  #00000001
        :pswitch_1ae  #00000002
        :pswitch_187  #00000003
        :pswitch_15f  #00000004
        :pswitch_137  #00000005
        :pswitch_12c  #00000006
        :pswitch_121  #00000007
        :pswitch_108  #00000008
        :pswitch_ee  #00000009
        :pswitch_c2  #0000000a
        :pswitch_bd  #0000000b
        :pswitch_bd  #0000000c
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 527
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  suspend_package PACKAGE\n  unsuspend_package PACKAGE\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .registers 7
    .param p1, "res"  # Landroid/content/res/Resources;
    .param p2, "encoded"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 265
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 266
    :cond_8
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 269
    :cond_21
    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 270
    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 271
    const-string v0, "content:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 272
    const-string v0, "file:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 273
    const-string v0, "android.resource:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    goto :goto_87

    .line 276
    :cond_4a
    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_67

    .line 277
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 279
    .local v0, "resid":I
    if-eqz v0, :cond_66

    .line 280
    invoke-static {p1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 279
    .end local v0  # "resid":I
    :cond_66
    goto :goto_85

    .line 282
    :cond_67
    const-string v0, "data:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 283
    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 284
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 285
    .local v1, "bits":[B
    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 282
    .end local v1  # "bits":[B
    :cond_85
    :goto_85
    nop

    .line 287
    return-object v1

    .line 274
    :cond_87
    :goto_87
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 275
    .local v0, "asUri":Landroid/net/Uri;
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1
.end method
