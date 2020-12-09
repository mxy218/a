.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.super Landroid/media/session/ISessionManager$Stub;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionManagerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc


# instance fields
.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 3

    .line 993
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/media/session/ISessionManager$Stub;-><init>()V

    .line 998
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 999
    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 2146
    new-instance p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 2216
    new-instance p1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;

    invoke-direct {p1, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z
    .registers 2

    .line 993
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5400(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 7

    .line 993
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 7

    .line 993
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    return-void
.end method

.method private dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIII)V
    .registers 20

    .line 1856
    move-object v1, p0

    move/from16 v5, p6

    move/from16 v8, p8

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    goto :goto_22

    .line 1857
    :cond_14
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 1859
    :goto_22
    nop

    .line 1860
    invoke-direct {p0, v5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isValidLocalStreamType(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_32

    .line 1861
    invoke-static {v5, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1862
    const/4 v2, 0x1

    goto :goto_33

    .line 1865
    :cond_32
    move v2, v3

    :goto_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adjusting "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " by "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". flags="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", suggestedStream="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", preferSuggestedStream="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "MediaSessionService"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    if-eqz v0, :cond_80

    if-eqz v2, :cond_70

    goto :goto_80

    .line 1907
    :cond_70
    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V

    goto :goto_b0

    .line 1870
    :cond_80
    :goto_80
    and-int/lit16 v0, v8, 0x200

    if-eqz v0, :cond_95

    const/4 v0, 0x3

    .line 1871
    invoke-static {v0, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_95

    .line 1872
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_94

    .line 1873
    const-string v0, "No active session to adjust, skipping media only volume event"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :cond_94
    return-void

    .line 1883
    :cond_95
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v9

    new-instance v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p5

    move-object v3, p2

    move v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;ZLjava/lang/String;IIIILjava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1910
    :goto_b0
    return-void
.end method

.method private dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 26

    .line 1941
    move-object/from16 v1, p0

    move-object/from16 v10, p5

    const-string v2, ", type="

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 1942
    const-string v11, "Failed to send callback"

    const/4 v3, -0x1

    const-string v4, "Sending "

    const-string v12, "MediaSessionService"

    if-eqz v0, :cond_7a

    .line 1944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    if-eqz p6, :cond_3a

    .line 1947
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 1950
    :cond_3a
    nop

    .line 1951
    if-eqz p6, :cond_45

    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$4500(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v2

    move v8, v2

    goto :goto_46

    :cond_45
    move v8, v3

    :goto_46
    iget-object v9, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 1950
    move-object v2, v0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    .line 1953
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v2

    if-eqz v2, :cond_200

    .line 1955
    :try_start_62
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v1

    .line 1956
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    .line 1955
    invoke-interface {v1, v10, v0}, Landroid/media/session/ICallback;->onMediaKeyEventDispatchedToMediaSession(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_73} :catch_74

    goto :goto_78

    .line 1957
    :catch_74
    move-exception v0

    .line 1958
    invoke-static {v12, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1959
    :goto_78
    goto/16 :goto_200

    .line 1961
    :cond_7a
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_92

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1962
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4700(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_200

    .line 1963
    :cond_92
    if-eqz p6, :cond_99

    .line 1964
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 1966
    :cond_99
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1967
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1968
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1971
    if-eqz p4, :cond_b7

    iget-object v5, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_b9

    :cond_b7
    move-object/from16 v5, p1

    .line 1972
    :goto_b9
    const-string v6, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1974
    :try_start_be
    iget-object v5, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_13b

    .line 1975
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v13

    .line 1977
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to the last known PendingIntent "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v14

    .line 1981
    if-eqz p6, :cond_fc

    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$4500(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v3

    :cond_fc
    move v15, v3

    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1982
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v18

    .line 1980
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    invoke-virtual/range {v13 .. v18}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1983
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    if-eqz v0, :cond_139

    .line 1984
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 1985
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1986
    if-eqz v0, :cond_139

    .line 1987
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v2

    .line 1988
    invoke-interface {v2, v10, v0}, Landroid/media/session/ICallback;->onMediaKeyEventDispatchedToMediaButtonReceiver(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V

    .line 1992
    :cond_139
    goto/16 :goto_1ff

    .line 1993
    :cond_13b
    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1994
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4700(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1995
    iget-object v5, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    .line 1996
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v5

    .line 1997
    iget-object v6, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1998
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4900(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v6

    .line 1997
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 2000
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to the restored intent "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_180
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_be .. :try_end_180} :catch_1e0
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_180} :catch_1db

    .line 2005
    const/4 v4, 0x2

    if-eq v5, v4, :cond_19c

    const/4 v4, 0x3

    if-eq v5, v4, :cond_192

    .line 2015
    :try_start_186
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1a6

    .line 2017
    :catch_190
    move-exception v0

    goto :goto_1a7

    .line 2010
    :cond_192
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2012
    goto :goto_1a6

    .line 2007
    :cond_19c
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_1a5} :catch_190
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_186 .. :try_end_1a5} :catch_1e0
    .catch Landroid/os/RemoteException; {:try_start_186 .. :try_end_1a5} :catch_1db

    .line 2008
    nop

    .line 2020
    :goto_1a6
    goto :goto_1c1

    .line 2018
    :goto_1a7
    :try_start_1a7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error sending media button to the restored intent "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2021
    :goto_1c1
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    if-eqz v0, :cond_1ff

    .line 2022
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    .line 2023
    invoke-interface {v0, v10, v3}, Landroid/media/session/ICallback;->onMediaKeyEventDispatchedToMediaButtonReceiver(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V
    :try_end_1da
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1a7 .. :try_end_1da} :catch_1e0
    .catch Landroid/os/RemoteException; {:try_start_1a7 .. :try_end_1da} :catch_1db

    goto :goto_1ff

    .line 2030
    :catch_1db
    move-exception v0

    .line 2031
    invoke-static {v12, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_200

    .line 2027
    :catch_1e0
    move-exception v0

    .line 2028
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending key event to media button receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2029
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2028
    invoke-static {v12, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2032
    :cond_1ff
    :goto_1ff
    nop

    .line 2034
    :cond_200
    :goto_200
    return-void
.end method

.method private dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V
    .registers 24

    .line 1574
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 1575
    :goto_b
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_13

    move v3, v1

    goto :goto_14

    :cond_13
    move v3, v2

    .line 1576
    :goto_14
    nop

    .line 1577
    nop

    .line 1578
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x18

    if-eq v4, v5, :cond_2f

    const/16 v5, 0x19

    if-eq v4, v5, :cond_2c

    const/16 v5, 0xa4

    if-eq v4, v5, :cond_29

    move v1, v2

    move v4, v1

    goto :goto_31

    .line 1586
    :cond_29
    move v4, v1

    move v1, v2

    goto :goto_31

    .line 1583
    :cond_2c
    const/4 v1, -0x1

    .line 1584
    move v4, v2

    goto :goto_31

    .line 1580
    :cond_2f
    nop

    .line 1581
    move v4, v2

    .line 1589
    :goto_31
    if-nez v0, :cond_35

    if-eqz v3, :cond_79

    .line 1590
    :cond_35
    nop

    .line 1591
    if-eqz p8, :cond_3c

    .line 1593
    const/16 v5, 0x1200

    move v14, v5

    goto :goto_45

    .line 1596
    :cond_3c
    if-eqz v3, :cond_42

    .line 1597
    const/16 v5, 0x1014

    move v14, v5

    goto :goto_45

    .line 1599
    :cond_42
    const/16 v5, 0x1011

    move v14, v5

    .line 1602
    :goto_45
    if-eqz v1, :cond_5d

    .line 1604
    if-eqz v3, :cond_4b

    .line 1605
    move v13, v2

    goto :goto_4c

    .line 1604
    :cond_4b
    move v13, v1

    .line 1607
    :goto_4c
    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p7

    invoke-direct/range {v6 .. v14}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIII)V

    goto :goto_79

    .line 1609
    :cond_5d
    if-eqz v4, :cond_79

    .line 1610
    if-eqz v0, :cond_79

    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_79

    .line 1611
    const/16 v13, 0x65

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p7

    invoke-direct/range {v6 .. v14}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIII)V

    .line 1616
    :cond_79
    :goto_79
    return-void
.end method

.method private handleVoiceKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 17

    .line 1914
    move-object v7, p0

    invoke-virtual {p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1915
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    move v1, v2

    goto :goto_12

    :cond_11
    move v1, v3

    .line 1916
    :goto_12
    if-nez v0, :cond_31

    .line 1917
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1f

    .line 1918
    iput-boolean v2, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 1919
    iput-boolean v3, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    goto :goto_57

    .line 1920
    :cond_1f
    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    if-eqz v0, :cond_57

    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    if-nez v0, :cond_57

    if-eqz v1, :cond_57

    .line 1921
    iput-boolean v2, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 1922
    move/from16 v8, p6

    invoke-direct {p0, v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->startVoiceInput(Z)V

    goto :goto_57

    .line 1924
    :cond_31
    move/from16 v8, p6

    if-ne v0, v2, :cond_57

    .line 1925
    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    if-eqz v0, :cond_57

    .line 1926
    iput-boolean v3, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 1927
    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    if-nez v0, :cond_57

    invoke-virtual {p5}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_57

    .line 1929
    move-object v9, p5

    invoke-static {p5, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v5

    .line 1930
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 1932
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 1937
    :cond_57
    :goto_57
    return-void
.end method

.method private hasMediaControlPermission(ILjava/lang/String;II)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1814
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p3, p4}, Lcom/android/server/media/MediaSessionService;->access$4100(Lcom/android/server/media/MediaSessionService;II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1815
    return v1

    .line 1821
    :cond_a
    const/16 v0, 0x3e8

    if-eq p4, v0, :cond_8e

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v2, p3, p4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p3

    if-nez p3, :cond_1d

    goto :goto_8e

    .line 1825
    :cond_1d
    sget-boolean p3, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    const-string v0, " (uid="

    const-string v2, "MediaSessionService"

    if-eqz p3, :cond_3f

    .line 1826
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") hasn\'t granted MEDIA_CONTENT_CONTROL"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_3f
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 1831
    const/4 v3, 0x0

    if-eq p1, p3, :cond_47

    .line 1832
    return v3

    .line 1837
    :cond_47
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1838
    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$4200(Lcom/android/server/media/MediaSessionService;)Landroid/app/INotificationManager;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/app/INotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object p1

    .line 1839
    if-eqz p1, :cond_6f

    .line 1840
    move p3, v3

    :goto_54
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge p3, v4, :cond_6f

    .line 1841
    nop

    .line 1842
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1841
    invoke-static {p2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 1843
    return v1

    .line 1840
    :cond_6c
    add-int/lit8 p3, p3, 0x1

    goto :goto_54

    .line 1847
    :cond_6f
    sget-boolean p1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz p1, :cond_8d

    .line 1848
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") doesn\'t have an enabled notification listener"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :cond_8d
    return v3

    .line 1824
    :cond_8e
    :goto_8e
    return v1
.end method

.method private isUserSetupComplete()Z
    .registers 5

    .line 2080
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method private isValidLocalStreamType(I)Z
    .registers 3

    .line 2086
    if-ltz p1, :cond_7

    const/4 v0, 0x5

    if-gt p1, v0, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method private isVoiceKey(I)Z
    .registers 3

    .line 2075
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_13

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2076
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$5200(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x55

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    .line 2075
    :goto_14
    return p1
.end method

.method private startVoiceInput(Z)V
    .registers 8

    .line 2037
    nop

    .line 2043
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2044
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$5000(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$5000(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v2

    goto :goto_29

    :cond_28
    move v1, v3

    .line 2045
    :goto_29
    const-string v4, "MediaSessionService"

    if-nez v1, :cond_41

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2046
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2047
    const-string/jumbo v1, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 2049
    :cond_41
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2050
    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2051
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$5000(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_57

    goto :goto_58

    :cond_57
    move v2, v3

    .line 2050
    :goto_58
    const-string v1, "android.speech.extras.EXTRA_SECURE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2052
    const-string/jumbo v1, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :goto_63
    if-eqz p1, :cond_6e

    .line 2056
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$5100(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2059
    :cond_6e
    nop

    .line 2060
    const/high16 v1, 0x10800000

    :try_start_71
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2062
    sget-boolean v1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v1, :cond_8d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "voiceIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    :cond_8d
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_98
    .catch Landroid/content/ActivityNotFoundException; {:try_start_71 .. :try_end_98} :catch_a6
    .catchall {:try_start_71 .. :try_end_98} :catchall_a4

    .line 2068
    if-eqz p1, :cond_be

    .line 2069
    :goto_9a
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$5100(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_be

    .line 2068
    :catchall_a4
    move-exception v0

    goto :goto_bf

    .line 2065
    :catch_a6
    move-exception v0

    .line 2066
    :try_start_a7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No activity for search: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_a7 .. :try_end_bb} :catchall_a4

    .line 2068
    if-eqz p1, :cond_be

    .line 2069
    goto :goto_9a

    .line 2072
    :cond_be
    :goto_be
    return-void

    .line 2068
    :goto_bf
    if-eqz p1, :cond_ca

    .line 2069
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$5100(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_ca
    throw v0
.end method

.method private verifySessionsRequest(Landroid/content/ComponentName;III)I
    .registers 13

    .line 1794
    nop

    .line 1795
    if-eqz p1, :cond_e

    .line 1798
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1799
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, v0, p4}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    move-object v7, v0

    goto :goto_10

    .line 1795
    :cond_e
    const/4 v0, 0x0

    move-object v7, v0

    .line 1803
    :goto_10
    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "getSessions"

    move v1, p3

    move v2, p4

    move v3, p2

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1807
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p1, p3, p4, p2}, Lcom/android/server/media/MediaSessionService;->access$4000(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V

    .line 1808
    return p2
.end method


# virtual methods
.method public addSession2TokensListener(Landroid/media/session/ISession2TokensListener;I)V
    .registers 12

    .line 1139
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1140
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1141
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1145
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_e
    const-string v5, "addSession2TokensListener"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 1148
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_4a

    .line 1149
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->access$2500(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I

    move-result v1

    .line 1150
    if-ltz v1, :cond_31

    .line 1151
    const-string p1, "MediaSessionService"

    const-string p2, "addSession2TokensListener is already added, ignoring"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_47

    .line 1158
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1152
    return-void

    .line 1154
    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {v2, v3, p1, p2}, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_47

    .line 1158
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1159
    nop

    .line 1160
    return-void

    .line 1156
    :catchall_47
    move-exception p1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw p1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    .line 1158
    :catchall_4a
    move-exception p1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1093
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 1094
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1095
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1098
    :try_start_c
    invoke-direct {p0, p2, p3, v5, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 1099
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p3}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_5e

    .line 1100
    :try_start_17
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionService;->access$2400(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v0

    .line 1101
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2c

    .line 1102
    const-string p1, "MediaSessionService"

    const-string p2, "ActiveSessionsListener is already added, ignoring"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    monitor-exit p3
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_5b

    .line 1116
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1103
    return-void

    .line 1105
    :cond_2c
    :try_start_2c
    new-instance v9, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_5b

    .line 1108
    :try_start_36
    invoke-interface {p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, v9, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_3e} :catch_4e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_5b

    .line 1112
    nop

    .line 1113
    :try_start_3f
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    monitor-exit p3
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_5b

    .line 1116
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1117
    nop

    .line 1118
    return-void

    .line 1109
    :catch_4e
    move-exception p1

    .line 1110
    :try_start_4f
    const-string p2, "MediaSessionService"

    const-string v0, "ActiveSessionsListener is dead, ignoring it"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1111
    monitor-exit p3
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_5b

    .line 1116
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1111
    return-void

    .line 1114
    :catchall_5b
    move-exception p1

    :try_start_5c
    monitor-exit p3
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw p1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    .line 1116
    :catchall_5e
    move-exception p1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/session/ISession;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1004
    move-object v0, p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 1005
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1006
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1008
    :try_start_d
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object v12, p1

    invoke-static {v1, p1, v9}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 1009
    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "createSession"

    move v1, v8

    move v2, v9

    move/from16 v3, p5

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1011
    if-eqz p2, :cond_38

    .line 1014
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move v1, v8

    move v2, v9

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/server/media/MediaSessionService;->access$2200(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 1015
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getSessionBinder()Landroid/media/session/ISession;

    move-result-object v0
    :try_end_34
    .catchall {:try_start_d .. :try_end_34} :catchall_40

    .line 1017
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1014
    return-object v0

    .line 1012
    :cond_38
    :try_start_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Controller callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_40

    .line 1017
    :catchall_40
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public dispatchAdjustVolume(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 19

    .line 1690
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1691
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1692
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1694
    move-object v0, p0

    :try_start_d
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_2a

    .line 1695
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    :try_start_1e
    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIII)V

    .line 1697
    monitor-exit v12
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_27

    .line 1699
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1700
    nop

    .line 1701
    return-void

    .line 1697
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v12
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 1699
    :catchall_2a
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    .registers 25

    .line 1209
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    if-eqz v11, :cond_13b

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_13b

    .line 1214
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1215
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1216
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1218
    :try_start_1e
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_5d

    .line 1219
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMediaKeyEvent, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", asSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p2

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 1218
    :cond_5d
    move-object/from16 v9, p1

    move/from16 v8, p2

    .line 1223
    :goto_61
    invoke-direct/range {p0 .. p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_72

    .line 1226
    const-string v0, "MediaSessionService"

    const-string v1, "Not dispatching media key event because user setup is in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_1e .. :try_end_6e} :catchall_136

    .line 1265
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1228
    return-void

    .line 1231
    :cond_72
    :try_start_72
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_136

    .line 1232
    :try_start_79
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Z

    move-result v17

    .line 1233
    if-eqz v17, :cond_91

    const/16 v0, 0x3e8

    if-eq v13, v0, :cond_91

    .line 1236
    const-string v0, "MediaSessionService"

    const-string v1, "Only the system can dispatch media key event to the global priority session."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    monitor-exit v16
    :try_end_8d
    .catchall {:try_start_79 .. :try_end_8d} :catchall_133

    .line 1265
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1238
    return-void

    .line 1240
    :cond_91
    if-nez v17, :cond_102

    .line 1241
    :try_start_93
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v0

    if-eqz v0, :cond_102

    .line 1243
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to the media key listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_93 .. :try_end_ba} :catchall_133

    .line 1246
    :try_start_ba
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v0

    new-instance v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;

    const/16 v18, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v4, v12

    move v5, v13

    move/from16 v6, p2

    move-object/from16 v19, v7

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionService$1;)V

    move-object/from16 v1, v19

    invoke-interface {v0, v11, v1}, Landroid/media/session/IOnMediaKeyListener;->onMediaKey(Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_e1} :catch_e6
    .catchall {:try_start_ba .. :try_end_e1} :catchall_133

    .line 1249
    :try_start_e1
    monitor-exit v16
    :try_end_e2
    .catchall {:try_start_e1 .. :try_end_e2} :catchall_133

    .line 1265
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1249
    return-void

    .line 1250
    :catch_e6
    move-exception v0

    .line 1251
    :try_start_e7
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to send "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to the media key listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_102
    if-nez v17, :cond_11e

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {v10, v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 1257
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v12

    move v4, v13

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    goto :goto_12d

    .line 1260
    :cond_11e
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v12

    move v4, v13

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 1263
    :goto_12d
    monitor-exit v16
    :try_end_12e
    .catchall {:try_start_e7 .. :try_end_12e} :catchall_133

    .line 1265
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1266
    nop

    .line 1267
    return-void

    .line 1263
    :catchall_133
    move-exception v0

    :try_start_134
    monitor-exit v16
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_133

    :try_start_135
    throw v0
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_136

    .line 1265
    :catchall_136
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1210
    :cond_13b
    :goto_13b
    const-string v0, "MediaSessionService"

    const-string v1, "Attempted to dispatch null or non-media key event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    return-void
.end method

.method public dispatchMediaKeyEventToSessionAsSystemService(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/view/KeyEvent;)Z
    .registers 15

    .line 1284
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1285
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1286
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1288
    :try_start_c
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_7b

    .line 1289
    :try_start_13
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p2}, Lcom/android/server/media/MediaSessionService;->access$2800(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 1290
    if-nez v0, :cond_28

    .line 1291
    const-string p1, "MediaSessionService"

    const-string p2, "Failed to find session to dispatch key event."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const/4 p1, 0x0

    monitor-exit v10
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_78

    .line 1303
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1292
    return p1

    .line 1294
    :cond_28
    :try_start_28
    sget-boolean v1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v1, :cond_6a

    .line 1295
    const-string v1, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMediaKeyEventToSessionAsSystemService, pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sessionToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", event="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", session="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :cond_6a
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    move-result p1

    monitor-exit v10
    :try_end_74
    .catchall {:try_start_28 .. :try_end_74} :catchall_78

    .line 1303
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1299
    return p1

    .line 1301
    :catchall_78
    move-exception p1

    :try_start_79
    monitor-exit v10
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    :try_start_7a
    throw p1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    .line 1303
    :catchall_7b
    move-exception p1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public dispatchVolumeKeyEvent(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)V
    .registers 28

    .line 1496
    move-object/from16 v0, p0

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    if-eqz v10, :cond_1ca

    .line 1497
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_24

    .line 1498
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x19

    if-eq v1, v2, :cond_24

    .line 1499
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0xa4

    if-eq v1, v2, :cond_24

    goto/16 :goto_1ca

    .line 1504
    :cond_24
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 1505
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 1506
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchVolumeKeyEvent, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", opPkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", asSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", stream="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", musicOnly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :try_start_84
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_1c5

    .line 1517
    :try_start_8b
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Z

    move-result v1

    if-nez v1, :cond_1a9

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1518
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v1

    if-nez v1, :cond_a1

    goto/16 :goto_1a9

    .line 1524
    :cond_a1
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_133

    .line 1525
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_f2

    .line 1527
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    .line 1528
    invoke-static/range {p4 .. p4}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v3

    .line 1527
    invoke-static {v1, v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3302(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 1529
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3402(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I

    .line 1530
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1, v12}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3502(Lcom/android/server/media/MediaSessionService$FullUserRecord;Z)Z

    .line 1531
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1532
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1534
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v4

    const/4 v5, 0x0

    .line 1532
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/media/MediaSessionService$MessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1535
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$3600(Lcom/android/server/media/MediaSessionService;)I

    move-result v4

    int-to-long v4, v4

    .line 1531
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/media/MediaSessionService$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1537
    :cond_f2
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-gtz v1, :cond_fe

    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_1bc

    .line 1538
    :cond_fe
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeMessages(I)V

    .line 1539
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v1

    if-eqz v1, :cond_12c

    .line 1540
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1541
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v2

    .line 1540
    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionService;->access$3700(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    .line 1543
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3302(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 1545
    :cond_12c
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v10}, Lcom/android/server/media/MediaSessionService;->access$3700(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    goto/16 :goto_1bc

    .line 1548
    :cond_133
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeMessages(I)V

    .line 1549
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v1

    if-eqz v1, :cond_1a3

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1550
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 1551
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1a3

    .line 1553
    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1555
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v18

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1556
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v19

    iget-object v1, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1557
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Z

    move-result v20

    .line 1553
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v13

    move v5, v14

    move/from16 v6, p3

    move-object/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 1558
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v13

    move v5, v14

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    goto :goto_1bc

    .line 1561
    :cond_1a3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v10}, Lcom/android/server/media/MediaSessionService;->access$3700(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    goto :goto_1bc

    .line 1519
    :cond_1a9
    :goto_1a9
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v13

    move v5, v14

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 1565
    :cond_1bc
    :goto_1bc
    monitor-exit v17
    :try_end_1bd
    .catchall {:try_start_8b .. :try_end_1bd} :catchall_1c2

    .line 1567
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1568
    nop

    .line 1569
    return-void

    .line 1565
    :catchall_1c2
    move-exception v0

    :try_start_1c3
    monitor-exit v17
    :try_end_1c4
    .catchall {:try_start_1c3 .. :try_end_1c4} :catchall_1c2

    :try_start_1c4
    throw v0
    :try_end_1c5
    .catchall {:try_start_1c4 .. :try_end_1c5} :catchall_1c5

    .line 1567
    :catchall_1c5
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1500
    :cond_1ca
    :goto_1ca
    const-string v0, "MediaSessionService"

    const-string v1, "Attempted to dispatch null or non-volume key event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    return-void
.end method

.method public dispatchVolumeKeyEventToSessionAsSystemService(Ljava/lang/String;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/view/KeyEvent;)V
    .registers 21

    .line 1633
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1634
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1635
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1637
    :try_start_10
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_ff

    .line 1638
    :try_start_17
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2, v1}, Lcom/android/server/media/MediaSessionService;->access$2800(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    .line 1639
    if-nez v2, :cond_4e

    .line 1640
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to find session to dispatch key event, token="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Fallbacks to the default handling."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    const/4 v6, 0x1

    const/high16 v8, -0x80000000

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 1644
    monitor-exit v12
    :try_end_4a
    .catchall {:try_start_17 .. :try_end_4a} :catchall_fc

    .line 1683
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1644
    return-void

    .line 1646
    :cond_4e
    :try_start_4e
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_9f

    .line 1647
    const-string v0, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchVolumeKeyEventToSessionAsSystemService, pkg="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", opPkg="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p2

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", pid="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", uid="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", sessionToken="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", session="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    .line 1646
    :cond_9f
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v1, p4

    .line 1652
    :goto_a5
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_c6

    if-eq v0, v3, :cond_b0

    goto/16 :goto_f6

    .line 1676
    :cond_b0
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v13, 0x0

    const/16 v14, 0x1014

    const/4 v15, 0x0

    move-object v0, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v4

    move v4, v5

    move-object v5, v8

    move v6, v9

    move v7, v13

    move v8, v14

    move v9, v15

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V

    goto :goto_f6

    .line 1654
    :cond_c6
    const/4 v0, 0x0

    .line 1655
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v8, 0x18

    if-eq v1, v8, :cond_e0

    const/16 v3, 0x19

    if-eq v1, v3, :cond_dd

    const/16 v3, 0xa4

    if-eq v1, v3, :cond_d9

    move v8, v0

    goto :goto_e2

    .line 1663
    :cond_d9
    const/16 v0, 0x65

    move v8, v0

    goto :goto_e2

    .line 1660
    :cond_dd
    const/4 v0, -0x1

    .line 1661
    move v8, v0

    goto :goto_e2

    .line 1657
    :cond_e0
    nop

    .line 1658
    move v8, v3

    .line 1666
    :goto_e2
    const/4 v9, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v0, v2

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v4

    move v4, v5

    move-object v5, v9

    move v6, v13

    move v7, v8

    move v8, v14

    move v9, v15

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V

    .line 1669
    nop

    .line 1681
    :goto_f6
    monitor-exit v12
    :try_end_f7
    .catchall {:try_start_4e .. :try_end_f7} :catchall_fc

    .line 1683
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1684
    nop

    .line 1685
    return-void

    .line 1681
    :catchall_fc
    move-exception v0

    :try_start_fd
    monitor-exit v12
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    :try_start_fe
    throw v0
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_ff

    .line 1683
    :catchall_ff
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1742
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "MediaSessionService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 1744
    :cond_f
    const-string p1, "MEDIA SESSION SERVICE (dumpsys media_session)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1745
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1747
    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1748
    :try_start_1e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sessions listeners."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1749
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Global priority session is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1750
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p3}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p3

    if-eqz p3, :cond_69

    .line 1751
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p3}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object p3

    const-string v0, "  "

    invoke-virtual {p3, p2, v0}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1753
    :cond_69
    const-string p3, "User Records:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1754
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p3}, Lcom/android/server/media/MediaSessionService;->access$3900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 1755
    const/4 v0, 0x0

    :goto_79
    if-ge v0, p3, :cond_8f

    .line 1756
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$3900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    const-string v2, ""

    invoke-virtual {v1, p2, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1755
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 1758
    :cond_8f
    iget-object p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {p3}, Lcom/android/server/media/MediaSessionService;->access$600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p3, v0, p2, v1}, Lcom/android/server/media/AudioPlayerStateMonitor;->dump(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1759
    monitor-exit p1

    .line 1760
    return-void

    .line 1759
    :catchall_a2
    move-exception p2

    monitor-exit p1
    :try_end_a4
    .catchall {:try_start_1e .. :try_end_a4} :catchall_a2

    throw p2
.end method

.method public getSession2Tokens(I)Landroid/content/pm/ParceledListSlice;
    .registers 11

    .line 1070
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1071
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1072
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1077
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_e
    const-string v5, "getSession2Tokens"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1081
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_30

    .line 1082
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1, p1}, Lcom/android/server/media/MediaSessionService;->getSession2TokensLocked(I)Ljava/util/List;

    move-result-object p1

    .line 1083
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_2d

    .line 1084
    :try_start_24
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_30

    .line 1086
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1084
    return-object v0

    .line 1083
    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw p1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 1086
    :catchall_30
    move-exception p1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getSessions(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$Token;",
            ">;"
        }
    .end annotation

    .line 1049
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1050
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1051
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1054
    :try_start_c
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result p1

    .line 1055
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_43

    .line 1057
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->access$2300(Lcom/android/server/media/MediaSessionService;I)Ljava/util/List;

    move-result-object p1

    .line 1058
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    .line 1059
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    goto :goto_26

    .line 1061
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_40

    .line 1062
    nop

    .line 1064
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1062
    return-object p2

    .line 1061
    :catchall_40
    move-exception p1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    :try_start_42
    throw p1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    .line 1064
    :catchall_43
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public isGlobalPriorityActive()Z
    .registers 3

    .line 1735
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1736
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1737
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isTrusted(Ljava/lang/String;II)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1773
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1784
    :try_start_8
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->hasMediaControlPermission(ILjava/lang/String;II)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_14

    .line 1787
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1784
    return p1

    .line 1787
    :catchall_14
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public notifySession2Created(Landroid/media/Session2Token;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1023
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 1024
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1025
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1027
    :try_start_b
    sget-boolean v3, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v3, :cond_25

    .line 1028
    const-string v3, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session2 is created "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_25
    invoke-virtual {p1}, Landroid/media/Session2Token;->getUid()I

    move-result v3

    if-ne v0, v3, :cond_54

    .line 1034
    new-instance v0, Lcom/android/server/media/MediaSessionService$Controller2Callback;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {v0, v3, p1}, Lcom/android/server/media/MediaSessionService$Controller2Callback;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/Session2Token;)V

    .line 1039
    new-instance v3, Landroid/media/MediaController2$Builder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/media/MediaController2$Builder;-><init>(Landroid/content/Context;Landroid/media/Session2Token;)V

    new-instance p1, Landroid/os/HandlerExecutor;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1040
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v3, p1, v0}, Landroid/media/MediaController2$Builder;->setControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/MediaController2$Builder;

    move-result-object p1

    .line 1041
    invoke-virtual {p1}, Landroid/media/MediaController2$Builder;->build()Landroid/media/MediaController2;
    :try_end_4f
    .catchall {:try_start_b .. :try_end_4f} :catchall_77

    .line 1043
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1044
    nop

    .line 1045
    return-void

    .line 1031
    :cond_54
    :try_start_54
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected Session2Token\'s UID, expected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but actually="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    invoke-virtual {p1}, Landroid/media/Session2Token;->getUid()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_77
    .catchall {:try_start_54 .. :try_end_77} :catchall_77

    .line 1043
    :catchall_77
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public registerRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .registers 9

    .line 1705
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1706
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1707
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1708
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1710
    :try_start_13
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string v6, "listen for volume changes"

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/media/MediaSessionService;->access$3800(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 1711
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_27

    .line 1713
    :try_start_21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1714
    nop

    .line 1715
    monitor-exit v4

    .line 1716
    return-void

    .line 1713
    :catchall_27
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1715
    :catchall_2c
    move-exception p1

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public removeSession2TokensListener(Landroid/media/session/ISession2TokensListener;)V
    .registers 7

    .line 1164
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 1165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 1166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1169
    :try_start_a
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_3a

    .line 1170
    :try_start_11
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3, p1}, Lcom/android/server/media/MediaSessionService;->access$2500(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I

    move-result p1

    .line 1171
    if-ltz p1, :cond_31

    .line 1172
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1173
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_37

    .line 1175
    :try_start_25
    iget-object v3, p1, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {v3}, Landroid/media/session/ISession2TokensListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_30
    .catchall {:try_start_25 .. :try_end_2f} :catchall_37

    .line 1178
    goto :goto_31

    .line 1176
    :catch_30
    move-exception p1

    .line 1180
    :cond_31
    :goto_31
    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_37

    .line 1182
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1183
    nop

    .line 1184
    return-void

    .line 1180
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw p1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    .line 1182
    :catchall_3a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1123
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1124
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->access$2400(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result p1

    .line 1125
    const/4 v1, -0x1

    if-eq p1, v1, :cond_28

    .line 1126
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2a

    .line 1128
    :try_start_1c
    iget-object v1, p1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    invoke-interface {v1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_27
    .catchall {:try_start_1c .. :try_end_26} :catchall_2a

    .line 1131
    goto :goto_28

    .line 1129
    :catch_27
    move-exception p1

    .line 1133
    :cond_28
    :goto_28
    :try_start_28
    monitor-exit v0

    .line 1134
    return-void

    .line 1133
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public setCallback(Landroid/media/session/ICallback;)V
    .registers 9

    .line 1309
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 1310
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1311
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1313
    const/16 v3, 0x3ea

    :try_start_d
    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 1317
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_b0

    .line 1318
    :try_start_1a
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1319
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v4}, Lcom/android/server/media/MediaSessionService;->access$2900(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    .line 1320
    if-eqz v5, :cond_8a

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v6

    if-eq v6, v4, :cond_2d

    goto :goto_8a

    .line 1325
    :cond_2d
    invoke-static {v5, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3002(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/ICallback;)Landroid/media/session/ICallback;

    .line 1326
    const-string p1, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The callback "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is set by "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1327
    invoke-static {v6, v0}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1326
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object p1

    if-nez p1, :cond_63

    .line 1329
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_1a .. :try_end_5f} :catchall_a5

    .line 1348
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1329
    return-void

    .line 1332
    :cond_63
    :try_start_63
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/session/ICallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    invoke-direct {v0, p0, v5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 v4, 0x0

    invoke-interface {p1, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1341
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_77} :catch_78
    .catchall {:try_start_63 .. :try_end_77} :catchall_a5

    .line 1345
    goto :goto_84

    .line 1342
    :catch_78
    move-exception p1

    .line 1343
    :try_start_79
    const-string v0, "MediaSessionService"

    const-string v4, "Failed to set callback"

    invoke-static {v0, v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1344
    const/4 p1, 0x0

    invoke-static {v5, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3002(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/ICallback;)Landroid/media/session/ICallback;

    .line 1346
    :goto_84
    monitor-exit v3
    :try_end_85
    .catchall {:try_start_79 .. :try_end_85} :catchall_a5

    .line 1348
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1349
    nop

    .line 1350
    return-void

    .line 1321
    :cond_8a
    :goto_8a
    :try_start_8a
    const-string p1, "MediaSessionService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only the full user can set the callback, userId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_8a .. :try_end_a1} :catchall_a5

    .line 1348
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1323
    return-void

    .line 1346
    :catchall_a5
    move-exception p1

    :try_start_a6
    monitor-exit v3
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    :try_start_a7
    throw p1

    .line 1314
    :cond_a8
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Only Bluetooth service processes can set Callback"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_b0
    .catchall {:try_start_a7 .. :try_end_b0} :catchall_b0

    .line 1348
    :catchall_b0
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
    .registers 9

    .line 1414
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1415
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1416
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1419
    :try_start_c
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SET_MEDIA_KEY_LISTENER"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_f1

    .line 1425
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_f9

    .line 1426
    :try_start_21
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1427
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v4}, Lcom/android/server/media/MediaSessionService;->access$2900(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    .line 1428
    if-eqz v5, :cond_d3

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v6

    if-eq v6, v4, :cond_35

    goto/16 :goto_d3

    .line 1433
    :cond_35
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v4

    if-eqz v4, :cond_68

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v4

    if-eq v4, v1, :cond_68

    .line 1434
    const-string p1, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The media key listener cannot be reset by another app. , mOnMediaKeyListenerUid="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1434
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_21 .. :try_end_64} :catchall_ee

    .line 1464
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1437
    return-void

    .line 1440
    :cond_68
    :try_start_68
    invoke-static {v5, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2602(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)Landroid/media/session/IOnMediaKeyListener;

    .line 1441
    invoke-static {v5, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3202(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I

    .line 1443
    const-string p1, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The media key listener "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is set by "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1444
    invoke-static {v6, v1}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1443
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object p1
    :try_end_9a
    .catchall {:try_start_68 .. :try_end_9a} :catchall_ee

    if-eqz p1, :cond_cd

    .line 1448
    :try_start_9c
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/session/IOnMediaKeyListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;

    invoke-direct {v1, p0, v5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 v4, 0x0

    invoke-interface {p1, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_ad} :catch_ae
    .catchall {:try_start_9c .. :try_end_ad} :catchall_ee

    .line 1460
    goto :goto_cd

    .line 1457
    :catch_ae
    move-exception p1

    .line 1458
    :try_start_af
    const-string p1, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set death recipient "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    const/4 p1, 0x0

    invoke-static {v5, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2602(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)Landroid/media/session/IOnMediaKeyListener;

    .line 1462
    :cond_cd
    :goto_cd
    monitor-exit v0
    :try_end_ce
    .catchall {:try_start_af .. :try_end_ce} :catchall_ee

    .line 1464
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1465
    nop

    .line 1466
    return-void

    .line 1429
    :cond_d3
    :goto_d3
    :try_start_d3
    const-string p1, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only the full user can set the media key listener, userId="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    monitor-exit v0
    :try_end_ea
    .catchall {:try_start_d3 .. :try_end_ea} :catchall_ee

    .line 1464
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1431
    return-void

    .line 1462
    :catchall_ee
    move-exception p1

    :try_start_ef
    monitor-exit v0
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_ee

    :try_start_f0
    throw p1

    .line 1422
    :cond_f1
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Must hold the SET_MEDIA_KEY_LISTENER permission."

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_f9
    .catchall {:try_start_f0 .. :try_end_f9} :catchall_f9

    .line 1464
    :catchall_f9
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V
    .registers 10

    .line 1354
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1355
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1359
    :try_start_c
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SET_VOLUME_KEY_LONG_PRESS_LISTENER"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_ed

    .line 1366
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_f5

    .line 1367
    :try_start_21
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1368
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, v4}, Lcom/android/server/media/MediaSessionService;->access$2900(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    .line 1369
    if-eqz v5, :cond_cf

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v6

    if-eq v6, v4, :cond_35

    goto/16 :goto_cf

    .line 1374
    :cond_35
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v4

    if-eqz v4, :cond_68

    .line 1375
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v4

    if-eq v4, v1, :cond_68

    .line 1376
    const-string p1, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The volume key long-press listener cannot be reset by another app , mOnVolumeKeyLongPressListener="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1376
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_21 .. :try_end_64} :catchall_ea

    .line 1408
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1380
    return-void

    .line 1383
    :cond_68
    :try_start_68
    invoke-static {v5, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$502(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 1384
    invoke-static {v5, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3102(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I

    .line 1386
    const-string v4, "MediaSessionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The volume key long-press listener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is set by "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1387
    invoke-static {p1, v1}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1386
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object p1
    :try_end_96
    .catchall {:try_start_68 .. :try_end_96} :catchall_ea

    if-eqz p1, :cond_c9

    .line 1391
    :try_start_98
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object p1

    invoke-interface {p1}, Landroid/media/session/IOnVolumeKeyLongPressListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;

    invoke-direct {v1, p0, v5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 v4, 0x0

    invoke-interface {p1, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_a9} :catch_aa
    .catchall {:try_start_98 .. :try_end_a9} :catchall_ea

    .line 1404
    goto :goto_c9

    .line 1400
    :catch_aa
    move-exception p1

    .line 1401
    :try_start_ab
    const-string p1, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set death recipient "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1401
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const/4 p1, 0x0

    invoke-static {v5, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$502(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 1406
    :cond_c9
    :goto_c9
    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_ab .. :try_end_ca} :catchall_ea

    .line 1408
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1409
    nop

    .line 1410
    return-void

    .line 1370
    :cond_cf
    :goto_cf
    :try_start_cf
    const-string p1, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only the full user can set the volume key long-press listener, userId="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    monitor-exit v0
    :try_end_e6
    .catchall {:try_start_cf .. :try_end_e6} :catchall_ea

    .line 1408
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1372
    return-void

    .line 1406
    :catchall_ea
    move-exception p1

    :try_start_eb
    monitor-exit v0
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    :try_start_ec
    throw p1

    .line 1362
    :cond_ed
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Must hold the SET_VOLUME_KEY_LONG_PRESS_LISTENER permission."

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_f5
    .catchall {:try_start_ec .. :try_end_f5} :catchall_f5

    .line 1408
    :catchall_f5
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public unregisterRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .registers 9

    .line 1720
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1721
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1722
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1723
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1725
    :try_start_13
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string v6, "listen for volume changes"

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/media/MediaSessionService;->access$3800(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 1726
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_27

    .line 1728
    :try_start_21
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1729
    nop

    .line 1730
    monitor-exit v4

    .line 1731
    return-void

    .line 1728
    :catchall_27
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1730
    :catchall_2c
    move-exception p1

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2c

    throw p1
.end method
