.class public Lcom/android/server/notification/NotificationShellCmd;
.super Landroid/os/ShellCommand;
.source "NotificationShellCmd.java"


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "shell_cmd"

.field public static final CHANNEL_IMP:I = 0x3

.field public static final CHANNEL_NAME:Ljava/lang/String; = "Shell command"

.field public static final NOTIFICATION_ID:I = 0x7e4

.field private static final NOTIFY_USAGE:Ljava/lang/String; = "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

.field private static final TAG:Ljava/lang/String; = "NotifShellCmd"

.field private static final USAGE:Ljava/lang/String; = "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  suspend_package PACKAGE\n  unsuspend_package PACKAGE\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT"


# instance fields
.field private final mBinderService:Landroid/app/INotificationManager;

.field private final mDirectService:Lcom/android/server/notification/NotificationManagerService;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 108
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 110
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 111
    iget-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    .line 112
    return-void
.end method

.method private doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)I
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 322
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 323
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 324
    new-instance v9, Landroid/app/Notification$Builder;

    const-string/jumbo v3, "shell_cmd"

    invoke-direct {v9, v11, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 327
    nop

    .line 328
    nop

    .line 329
    nop

    .line 330
    nop

    .line 331
    nop

    .line 332
    nop

    .line 334
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 335
    :goto_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextOption()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

    const/16 v17, -0x1

    if-eqz v3, :cond_47c

    .line 336
    nop

    .line 337
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v18

    const/4 v12, 0x2

    const/4 v5, 0x1

    sparse-switch v18, :sswitch_data_52c

    :cond_3a
    goto/16 :goto_194

    :sswitch_3c
    const-string v13, "large-icon"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0x9

    goto/16 :goto_196

    :sswitch_48
    const-string v13, "--verbose"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    move v13, v5

    goto/16 :goto_196

    :sswitch_53
    const-string v13, "--line"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0x18

    goto/16 :goto_196

    :sswitch_5f
    const-string v13, "--icon"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0xb

    goto/16 :goto_196

    :sswitch_6b
    const-string v13, "--help"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0x1c

    goto/16 :goto_196

    :sswitch_77
    const-string v13, "--bigtext"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0x15

    goto/16 :goto_196

    :sswitch_83
    const-string v13, "--bigText"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0x14

    goto/16 :goto_196

    :sswitch_8f
    const-string v13, "--largeicon"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v13, 0x7

    goto/16 :goto_196

    :sswitch_9a
    const-string v13, "--intent"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0x10

    goto/16 :goto_196

    :sswitch_a6
    const-string v13, "--picture"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0x17

    goto/16 :goto_196

    :sswitch_b2
    const-string v13, "largeicon"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0x8

    goto/16 :goto_196

    :sswitch_be
    const-string v13, "--content-intent"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0xe

    goto/16 :goto_196

    :sswitch_ca
    const-string v13, "--big-text"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0x16

    goto/16 :goto_196

    :sswitch_d6
    const-string/jumbo v13, "title"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v13, 0x4

    goto/16 :goto_196

    :sswitch_e2
    const-string v13, "--wtf"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0x1d

    goto/16 :goto_196

    :sswitch_ee
    const-string v13, "icon"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0xc

    goto/16 :goto_196

    :sswitch_fa
    const-string v13, "-v"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v13, 0x0

    goto/16 :goto_196

    :sswitch_105
    const-string v13, "-t"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    move v13, v12

    goto/16 :goto_196

    :sswitch_110
    const-string v13, "-i"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0xa

    goto/16 :goto_196

    :sswitch_11c
    const-string v13, "-h"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0x1b

    goto/16 :goto_196

    :sswitch_128
    const-string v13, "-c"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0xd

    goto/16 :goto_196

    :sswitch_134
    const-string v13, "-S"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0x12

    goto :goto_196

    :sswitch_13f
    const-string v13, "-I"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v13, 0x5

    goto :goto_196

    :sswitch_149
    const-string v13, "--large-icon"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v13, 0x6

    goto :goto_196

    :sswitch_153
    const-string v13, "--conversation"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0x1a

    goto :goto_196

    :sswitch_15e
    const-string v13, "intent"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0x11

    goto :goto_196

    :sswitch_169
    const-string v13, "content-intent"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0xf

    goto :goto_196

    :sswitch_174
    const-string v13, "--title"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v13, 0x3

    goto :goto_196

    :sswitch_17e
    const-string v13, "--style"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0x13

    goto :goto_196

    :sswitch_189
    const-string v13, "--message"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/16 v13, 0x19

    goto :goto_196

    :goto_194
    move/from16 v13, v17

    :goto_196
    packed-switch v13, :pswitch_data_5a6

    .line 494
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    const/4 v1, 0x0

    return v1

    .line 484
    :pswitch_19e  #0x1a
    if-eqz v6, :cond_1af

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 489
    move-object v12, v6

    move-object v13, v7

    move-object/from16 v20, v8

    const/16 v19, 0x0

    goto/16 :goto_46c

    .line 485
    :cond_1af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--conversation requires --style messaging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :pswitch_1b7  #0x19
    if-eqz v6, :cond_20d

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 471
    const-string v4, ":"

    invoke-virtual {v3, v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 472
    array-length v4, v3

    if-le v4, v5, :cond_1db

    .line 473
    aget-object v4, v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/16 v17, 0x0

    aget-object v3, v3, v17

    invoke-virtual {v6, v4, v12, v13, v3}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    move-object v12, v6

    move-object v13, v7

    move-object/from16 v20, v8

    const/16 v19, 0x0

    goto/16 :goto_46c

    .line 476
    :cond_1db
    const/16 v17, 0x0

    aget-object v3, v3, v17

    move-object v13, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-array v4, v12, [Ljava/lang/String;

    .line 478
    invoke-virtual {v13}, Landroid/app/Notification$MessagingStyle;->getUserDisplayName()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v4, v17

    const-string v17, "Them"

    const/16 v20, 0x1

    aput-object v17, v4, v20

    .line 480
    invoke-virtual {v13}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    rem-int/lit8 v17, v17, 0x2

    aget-object v4, v4, v17

    .line 476
    invoke-virtual {v13, v3, v5, v6, v4}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    .line 482
    move-object/from16 v20, v8

    move-object v12, v13

    const/16 v19, 0x0

    move-object v13, v7

    goto/16 :goto_46c

    .line 467
    :cond_20d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--message requires --style messaging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :pswitch_215  #0x18
    move-object v13, v6

    if-eqz v7, :cond_227

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 464
    move-object/from16 v20, v8

    move-object v12, v13

    const/16 v19, 0x0

    move-object v13, v7

    goto/16 :goto_46c

    .line 461
    :cond_227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--line requires --style inbox"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :pswitch_22f  #0x17
    move-object v13, v6

    if-eqz v15, :cond_284

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 448
    invoke-virtual {v1, v0, v3}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 449
    if-eqz v4, :cond_26d

    .line 452
    invoke-virtual {v4, v11}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 453
    instance-of v5, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_255

    .line 454
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v20, v8

    move-object v12, v13

    const/16 v19, 0x0

    move-object v13, v7

    goto/16 :goto_46c

    .line 456
    :cond_255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not a bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_26d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad picture spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--picture requires --style bigpicture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :pswitch_28c  #0x14, 0x15, 0x16
    move-object v13, v6

    if-eqz v8, :cond_29e

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 442
    move-object/from16 v20, v8

    move-object v12, v13

    const/16 v19, 0x0

    move-object v13, v7

    goto/16 :goto_46c

    .line 439
    :cond_29e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "--bigtext requires --style bigtext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :pswitch_2a6  #0x12, 0x13
    move-object v13, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 405
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_5e0

    :cond_2b6
    goto :goto_2e9

    :sswitch_2b7
    const-string v4, "media"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b6

    const/4 v4, 0x4

    goto :goto_2eb

    :sswitch_2c1
    const-string v4, "inbox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b6

    move v4, v12

    goto :goto_2eb

    :sswitch_2cb
    const-string v4, "bigpicture"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b6

    const/4 v4, 0x1

    goto :goto_2eb

    :sswitch_2d5
    const-string v4, "bigtext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b6

    const/4 v4, 0x0

    goto :goto_2eb

    :sswitch_2df
    const-string v4, "messaging"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b6

    const/4 v4, 0x3

    goto :goto_2eb

    :goto_2e9
    move/from16 v4, v17

    :goto_2eb
    if-eqz v4, :cond_359

    const/4 v5, 0x1

    if-eq v4, v5, :cond_350

    if-eq v4, v12, :cond_347

    const/4 v5, 0x3

    if-eq v4, v5, :cond_319

    const/4 v5, 0x4

    if-ne v4, v5, :cond_301

    .line 429
    new-instance v3, Landroid/app/Notification$MediaStyle;

    invoke-direct {v3}, Landroid/app/Notification$MediaStyle;-><init>()V

    .line 430
    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 431
    goto :goto_362

    .line 433
    :cond_301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unrecognized notification style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_319
    nop

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "--user"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32e

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    goto :goto_330

    .line 420
    :cond_32e
    const-string v3, "You"

    .line 424
    :goto_330
    new-instance v6, Landroid/app/Notification$MessagingStyle;

    new-instance v4, Landroid/app/Person$Builder;

    invoke-direct {v4}, Landroid/app/Person$Builder;-><init>()V

    .line 425
    invoke-virtual {v4, v3}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v3

    invoke-direct {v6, v3}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    .line 426
    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 427
    move-object v13, v6

    goto :goto_362

    .line 415
    :cond_347
    new-instance v7, Landroid/app/Notification$InboxStyle;

    invoke-direct {v7}, Landroid/app/Notification$InboxStyle;-><init>()V

    .line 416
    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 417
    goto :goto_362

    .line 411
    :cond_350
    new-instance v15, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v15}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 412
    invoke-virtual {v9, v15}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 413
    goto :goto_362

    .line 407
    :cond_359
    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 408
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 409
    nop

    .line 436
    :goto_362
    move-object v6, v13

    const/16 v19, 0x0

    goto/16 :goto_47a

    .line 375
    :pswitch_367  #0xd, 0xe, 0xf, 0x10, 0x11
    move-object v13, v6

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x62b40cf1

    const-string/jumbo v6, "service"

    const-string v12, "broadcast"

    if-eq v4, v5, :cond_395

    const v5, -0x607e173f

    if-eq v4, v5, :cond_38d

    const v5, 0x7643c6b5

    if-eq v4, v5, :cond_385

    :cond_384
    goto :goto_39f

    :cond_385
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_384

    const/4 v3, 0x1

    goto :goto_3a1

    :cond_38d
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_384

    const/4 v3, 0x0

    goto :goto_3a1

    :cond_395
    const-string v4, "activity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_384

    const/4 v3, 0x2

    goto :goto_3a1

    :goto_39f
    move/from16 v3, v17

    :goto_3a1
    if-eqz v3, :cond_3ab

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3ab

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3ab

    const/4 v3, 0x0

    goto :goto_3af

    .line 380
    :cond_3ab
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 382
    :goto_3af
    const/4 v5, 0x0

    invoke-static {v1, v5}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v4

    .line 383
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    if-nez v17, :cond_3dc

    .line 385
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v7

    const-string/jumbo v7, "xyz:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_3e0

    .line 383
    :cond_3dc
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    .line 388
    :goto_3e0
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/high16 v7, 0x8000000

    if-eqz v5, :cond_3f7

    .line 389
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-static {v11, v5, v4, v7, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object v12, v13

    move-object/from16 v13, v20

    move-object/from16 v20, v21

    const/16 v19, 0x0

    goto :goto_41f

    .line 392
    :cond_3f7
    const/4 v5, 0x0

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40a

    .line 393
    invoke-static {v11, v5, v4, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object v12, v13

    move-object/from16 v13, v20

    move-object/from16 v20, v21

    const/16 v19, 0x0

    goto :goto_41f

    .line 396
    :cond_40a
    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v3, v11

    move-object v12, v4

    move v4, v5

    const/16 v19, 0x0

    move-object v5, v12

    move-object v12, v13

    move-object/from16 v13, v20

    move-object/from16 v20, v21

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 400
    :goto_41f
    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 401
    goto :goto_46c

    .line 337
    :pswitch_423  #0xa, 0xb, 0xc
    move-object v12, v6

    move-object v13, v7

    move-object/from16 v20, v8

    const/16 v19, 0x0

    const/4 v4, 0x0

    goto :goto_432

    .line 352
    :pswitch_42b  #0x5, 0x6, 0x7, 0x8, 0x9
    move v4, v5

    move-object v12, v6

    move-object v13, v7

    move-object/from16 v20, v8

    const/16 v19, 0x0

    .line 357
    :goto_432
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 358
    invoke-virtual {v1, v0, v3}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v5

    .line 359
    if-nez v5, :cond_451

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error: invalid icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    return v17

    .line 363
    :cond_451
    if-eqz v4, :cond_457

    .line 364
    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 365
    goto :goto_46c

    .line 367
    :cond_457
    nop

    .line 369
    move-object v14, v5

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v8, v20

    goto :goto_47a

    .line 345
    :pswitch_45e  #0x2, 0x3, 0x4
    move-object v12, v6

    move-object v13, v7

    move-object/from16 v20, v8

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 346
    nop

    .line 497
    :goto_46c
    move-object v6, v12

    move-object v7, v13

    move-object/from16 v8, v20

    goto :goto_47a

    .line 340
    :pswitch_471  #0x0, 0x1
    move v4, v5

    move-object v12, v6

    move-object v13, v7

    move-object/from16 v20, v8

    const/16 v19, 0x0

    .line 341
    move/from16 v16, v4

    .line 497
    :goto_47a
    goto/16 :goto_25

    .line 499
    :cond_47c
    const/4 v5, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v12

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 501
    if-eqz v12, :cond_528

    if-nez v0, :cond_48b

    goto/16 :goto_528

    .line 506
    :cond_48b
    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 508
    if-nez v14, :cond_497

    .line 510
    const v0, 0x1080077

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_49a

    .line 512
    :cond_497
    invoke-virtual {v9, v14}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 515
    :goto_49a
    move/from16 v13, p3

    invoke-virtual {v1, v10, v13}, Lcom/android/server/notification/NotificationShellCmd;->ensureChannel(Ljava/lang/String;I)V

    .line 517
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "posting:\n  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "posting: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NotificationManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v3, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/16 v7, 0x7e4

    .line 522
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 521
    move-object/from16 v4, p2

    move v0, v5

    move-object/from16 v5, p2

    move-object v6, v12

    invoke-interface/range {v3 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 524
    if-eqz v16, :cond_526

    .line 525
    iget-object v3, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 526
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 525
    const/16 v5, 0x7e4

    invoke-virtual {v3, v10, v12, v5, v4}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v3

    .line 527
    nop

    :goto_4ef
    add-int/lit8 v4, v0, -0x1

    if-lez v0, :cond_50f

    .line 528
    if-eqz v3, :cond_4f6

    goto :goto_50f

    .line 530
    :cond_4f6
    :try_start_4f6
    const-string/jumbo v0, "waiting for notification to post..."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_501
    .catch Ljava/lang/InterruptedException; {:try_start_4f6 .. :try_end_501} :catch_502

    .line 533
    goto :goto_503

    .line 532
    :catch_502
    move-exception v0

    .line 534
    :goto_503
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 535
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 534
    invoke-virtual {v0, v10, v12, v5, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v3

    move v0, v4

    goto :goto_4ef

    .line 537
    :cond_50f
    :goto_50f
    if-nez v3, :cond_519

    .line 538
    const-string/jumbo v0, "warning: couldn\'t find notification after enqueueing"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_527

    .line 540
    :cond_519
    const-string/jumbo v0, "posted: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    const-string v0, "  "

    const/4 v1, 0x0

    invoke-virtual {v3, v2, v0, v11, v1}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_527

    .line 524
    :cond_526
    const/4 v1, 0x0

    .line 545
    :goto_527
    return v1

    .line 502
    :cond_528
    :goto_528
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    return v17

    :sswitch_data_52c
    .sparse-switch
        -0x74789999 -> :sswitch_189
        -0x603263ef -> :sswitch_17e
        -0x60295f48 -> :sswitch_174
        -0x4821dd90 -> :sswitch_169
        -0x468ec964 -> :sswitch_15e
        -0x32dd8ddd -> :sswitch_153
        -0x2bc1295 -> :sswitch_149
        0x5bc -> :sswitch_13f
        0x5c6 -> :sswitch_134
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
        0x2d3ae234 -> :sswitch_b2
        0x302cc35e -> :sswitch_a6
        0x487e843c -> :sswitch_9a
        0x4a573094 -> :sswitch_8f
        0x4bbf1cad -> :sswitch_83
        0x4bcda88d -> :sswitch_77
        0x4f7504e1 -> :sswitch_6b
        0x4f757219 -> :sswitch_5f
        0x4f76e594 -> :sswitch_53
        0x6789dfe2 -> :sswitch_48
        0x76d66fcb -> :sswitch_3c
    .end sparse-switch

    :pswitch_data_5a6
    .packed-switch 0x0
        :pswitch_471  #00000000
        :pswitch_471  #00000001
        :pswitch_45e  #00000002
        :pswitch_45e  #00000003
        :pswitch_45e  #00000004
        :pswitch_42b  #00000005
        :pswitch_42b  #00000006
        :pswitch_42b  #00000007
        :pswitch_42b  #00000008
        :pswitch_42b  #00000009
        :pswitch_423  #0000000a
        :pswitch_423  #0000000b
        :pswitch_423  #0000000c
        :pswitch_367  #0000000d
        :pswitch_367  #0000000e
        :pswitch_367  #0000000f
        :pswitch_367  #00000010
        :pswitch_367  #00000011
        :pswitch_2a6  #00000012
        :pswitch_2a6  #00000013
        :pswitch_28c  #00000014
        :pswitch_28c  #00000015
        :pswitch_28c  #00000016
        :pswitch_22f  #00000017
        :pswitch_215  #00000018
        :pswitch_1b7  #00000019
        :pswitch_19e  #0000001a
    .end packed-switch

    :sswitch_data_5e0
    .sparse-switch
        -0x55d4c8fc -> :sswitch_2df
        -0x6cebdd3 -> :sswitch_2d5
        -0x2a7c002 -> :sswitch_2cb
        0x5fb2286 -> :sswitch_2c1
        0x62f6fe4 -> :sswitch_2b7
    .end sparse-switch
.end method


# virtual methods
.method ensureChannel(Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    new-instance v0, Landroid/app/NotificationChannel;

    const-string/jumbo v1, "shell_cmd"

    const-string v2, "Shell command"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 287
    iget-object v2, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    .line 288
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 287
    invoke-interface {v2, p1, v3}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created channel: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    .line 291
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 290
    invoke-interface {v2, p1, p2, p1, v1}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 289
    const-string p2, "NotificationService"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 15

    .line 116
    if-nez p1, :cond_7

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 119
    :cond_7
    const/4 v0, 0x0

    .line 120
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 123
    const/4 v4, 0x0

    :try_start_11
    iget-object v5, p0, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 124
    if-eqz v5, :cond_1e

    array-length v6, v5

    if-lez v6, :cond_1e

    .line 125
    aget-object v0, v5, v4
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1e} :catch_25
    .catchall {:try_start_11 .. :try_end_1e} :catchall_22

    .line 130
    :cond_1e
    :goto_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    goto :goto_2e

    .line 130
    :catchall_22
    move-exception p1

    goto/16 :goto_2cf

    .line 127
    :catch_25
    move-exception v5

    .line 128
    :try_start_26
    const-string v6, "NotifShellCmd"

    const-string v7, "failed to get caller pkg"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_22

    goto :goto_1e

    .line 132
    :goto_2e
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 134
    const/16 v3, 0x2d

    const/16 v5, 0x5f

    :try_start_36
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, -0x1

    const/4 v11, 0x1

    sparse-switch v5, :sswitch_data_2d4

    :cond_47
    goto/16 :goto_e6

    :sswitch_49
    const-string v5, "allow_assistant"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    move v3, v6

    goto/16 :goto_e7

    :sswitch_54
    const-string/jumbo v5, "set_dnd"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    move v3, v4

    goto/16 :goto_e7

    :sswitch_60
    const-string v5, "distract_package"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    const/16 v3, 0x9

    goto/16 :goto_e7

    :sswitch_6c
    const-string v5, "disallow_listener"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    move v3, v7

    goto/16 :goto_e7

    :sswitch_77
    const-string/jumbo v5, "reset_assistant_user_set"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    const/16 v3, 0xa

    goto/16 :goto_e7

    :sswitch_84
    const-string/jumbo v5, "suspend_package"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    const/4 v3, 0x7

    goto :goto_e7

    :sswitch_8f
    const-string v5, "allow_dnd"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    move v3, v11

    goto :goto_e7

    :sswitch_99
    const-string/jumbo v5, "post"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    const/16 v3, 0xc

    goto :goto_e7

    :sswitch_a5
    const-string v5, "get_approved_assistant"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    const/16 v3, 0xb

    goto :goto_e7

    :sswitch_b0
    const-string v5, "disallow_dnd"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    move v3, v8

    goto :goto_e7

    :sswitch_ba
    const-string v5, "allow_listener"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    move v3, v9

    goto :goto_e7

    :sswitch_c4
    const-string/jumbo v5, "unsuspend_package"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    const/16 v3, 0x8

    goto :goto_e7

    :sswitch_d0
    const-string/jumbo v5, "notify"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    const/16 v3, 0xd

    goto :goto_e7

    :sswitch_dc
    const-string v5, "disallow_assistant"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_e2} :catch_2ae

    if-eqz v3, :cond_47

    const/4 v3, 0x6

    goto :goto_e7

    :goto_e6
    move v3, v10

    :goto_e7
    const-string v5, "Invalid assistant - must be a ComponentName"

    const-string v12, "Invalid listener - must be a ComponentName"

    packed-switch v3, :pswitch_data_30e

    .line 275
    :try_start_ee
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_2ad

    .line 272
    :pswitch_f4  #0xc, 0xd
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/notification/NotificationShellCmd;->doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)I

    .line 273
    goto/16 :goto_2ac

    .line 258
    :pswitch_f9  #0xb
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 259
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10b

    .line 260
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 262
    :cond_10b
    iget-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->getApprovedAssistant(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 263
    if-nez p1, :cond_11b

    .line 264
    const-string/jumbo p1, "null"

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2ac

    .line 266
    :cond_11b
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    goto/16 :goto_2ac

    .line 250
    :pswitch_124  #0xa
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 251
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_136

    .line 252
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 254
    :cond_136
    iget-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->resetAssistantUserSet(I)V

    .line 255
    goto/16 :goto_2ac

    .line 244
    :pswitch_13d  #0x9
    iget-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    .line 245
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 246
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {p1, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->simulatePackageDistractionBroadcast(I[Ljava/lang/String;)V

    .line 247
    goto/16 :goto_2ac

    .line 237
    :pswitch_156  #0x8
    iget-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/android/server/notification/NotificationManagerService;->simulatePackageSuspendBroadcast(ZLjava/lang/String;)V

    .line 239
    goto/16 :goto_2ac

    .line 232
    :pswitch_161  #0x7
    iget-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v11, v0}, Lcom/android/server/notification/NotificationManagerService;->simulatePackageSuspendBroadcast(ZLjava/lang/String;)V

    .line 234
    goto/16 :goto_2ac

    .line 218
    :pswitch_16c  #0x6
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 219
    if-nez p1, :cond_17a

    .line 220
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    return v10

    .line 223
    :cond_17a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 224
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18c

    .line 225
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 227
    :cond_18c
    iget-object v1, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, v0, v4}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 229
    goto/16 :goto_2ac

    .line 205
    :pswitch_193  #0x5
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 206
    if-nez p1, :cond_1a1

    .line 207
    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    return v10

    .line 210
    :cond_1a1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 211
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b3

    .line 212
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 214
    :cond_1b3
    iget-object v1, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, v0, v11}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 216
    goto/16 :goto_2ac

    .line 192
    :pswitch_1ba  #0x4
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 193
    if-nez p1, :cond_1c8

    .line 194
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    return v10

    .line 197
    :cond_1c8
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 198
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1da

    .line 199
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 201
    :cond_1da
    iget-object v1, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, v0, v4}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 203
    goto/16 :goto_2ac

    .line 179
    :pswitch_1e1  #0x3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 180
    if-nez p1, :cond_1ef

    .line 181
    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    return v10

    .line 184
    :cond_1ef
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 185
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_201

    .line 186
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 188
    :cond_201
    iget-object v1, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, v0, v11}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 190
    goto/16 :goto_2ac

    .line 169
    :pswitch_208  #0x2
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 171
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21e

    .line 172
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 174
    :cond_21e
    iget-object v1, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, v0, v4}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 177
    goto/16 :goto_2ac

    .line 158
    :pswitch_225  #0x1
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 160
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23b

    .line 161
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 163
    :cond_23b
    iget-object v1, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, v0, v11}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 166
    goto/16 :goto_2ac

    .line 136
    :pswitch_242  #0x0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 137
    nop

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_32e

    :cond_24e
    goto :goto_28e

    :sswitch_24f
    const-string/jumbo v1, "none"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24e

    move v10, v4

    goto :goto_28e

    :sswitch_25a
    const-string/jumbo v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24e

    move v10, v6

    goto :goto_28e

    :sswitch_265
    const-string v1, "all"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24e

    move v10, v7

    goto :goto_28e

    :sswitch_26f
    const-string/jumbo v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24e

    move v10, v11

    goto :goto_28e

    :sswitch_27a
    const-string/jumbo v1, "priority"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24e

    move v10, v8

    goto :goto_28e

    :sswitch_285
    const-string v1, "alarms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24e

    move v10, v9

    :goto_28e
    if-eqz v10, :cond_2a3

    if-eq v10, v11, :cond_2a3

    if-eq v10, v8, :cond_2a0

    if-eq v10, v9, :cond_29e

    if-eq v10, v7, :cond_29c

    if-eq v10, v6, :cond_29c

    move v7, v4

    goto :goto_2a5

    .line 151
    :cond_29c
    move v7, v11

    goto :goto_2a5

    .line 147
    :cond_29e
    nop

    .line 148
    goto :goto_2a5

    .line 144
    :cond_2a0
    nop

    .line 145
    move v7, v8

    goto :goto_2a5

    .line 141
    :cond_2a3
    nop

    .line 142
    move v7, v9

    .line 153
    :goto_2a5
    nop

    .line 154
    iget-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {p1, v0, v7}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;I)V
    :try_end_2ab
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_2ab} :catch_2ae

    .line 156
    nop

    .line 280
    :goto_2ac
    goto :goto_2ce

    .line 275
    :goto_2ad
    return p1

    .line 277
    :catch_2ae
    move-exception p1

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occurred. Check logcat for details. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    const-string v0, "NotificationService"

    const-string v1, "Error running shell command"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    :goto_2ce
    return v4

    .line 130
    :goto_2cf
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    nop

    :sswitch_data_2d4
    .sparse-switch
        -0x4f05a8e6 -> :sswitch_dc
        -0x3df868b7 -> :sswitch_d0
        -0x1e34b476 -> :sswitch_c4
        -0x19cf0b16 -> :sswitch_ba
        -0x199eb9aa -> :sswitch_b0
        -0x18b58921 -> :sswitch_a5
        0x3498a0 -> :sswitch_99
        0x16318b24 -> :sswitch_8f
        0x177b7f43 -> :sswitch_84
        0x28bd431f -> :sswitch_77
        0x4af068f8 -> :sswitch_6c
        0x5d9b0a8d -> :sswitch_60
        0x76556fbd -> :sswitch_54
        0x7dcb4968 -> :sswitch_49
    .end sparse-switch

    :pswitch_data_30e
    .packed-switch 0x0
        :pswitch_242  #00000000
        :pswitch_225  #00000001
        :pswitch_208  #00000002
        :pswitch_1e1  #00000003
        :pswitch_1ba  #00000004
        :pswitch_193  #00000005
        :pswitch_16c  #00000006
        :pswitch_161  #00000007
        :pswitch_156  #00000008
        :pswitch_13d  #00000009
        :pswitch_124  #0000000a
        :pswitch_f9  #0000000b
        :pswitch_f4  #0000000c
        :pswitch_f4  #0000000d
    .end packed-switch

    :sswitch_data_32e
    .sparse-switch
        -0x545a2fbe -> :sswitch_285
        -0x4577865c -> :sswitch_27a
        0xddf -> :sswitch_26f
        0x179a1 -> :sswitch_265
        0x1ad6f -> :sswitch_25a
        0x33af38 -> :sswitch_24f
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 3

    .line 550
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  suspend_package PACKAGE\n  unsuspend_package PACKAGE\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 295
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 296
    :cond_8
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 299
    :cond_21
    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 300
    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 301
    const-string v0, "content:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 302
    const-string v0, "file:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 303
    const-string v0, "android.resource:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    goto :goto_86

    .line 306
    :cond_4a
    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_66

    .line 307
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "drawable"

    const-string v2, "android"

    invoke-virtual {p1, p2, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 309
    if-eqz p2, :cond_84

    .line 310
    invoke-static {p1, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1

    .line 312
    :cond_66
    const-string p1, "data:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_84

    .line 313
    const/16 p1, 0x2c

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 314
    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 315
    array-length v0, p1

    invoke-static {p1, p2, v0}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1

    .line 312
    :cond_84
    nop

    .line 317
    return-object v1

    .line 304
    :cond_86
    :goto_86
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 305
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    return-object p1
.end method
