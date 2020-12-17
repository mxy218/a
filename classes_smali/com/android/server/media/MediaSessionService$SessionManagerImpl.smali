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
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/media/MediaSessionService;

    .line 1003
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/media/session/ISessionManager$Stub;-><init>()V

    .line 1008
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 1009
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 2174
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 2244
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p1, "x1"  # I

    .line 1003
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 7
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # Z
    .param p5, "x5"  # Landroid/view/KeyEvent;
    .param p6, "x6"  # Z

    .line 1003
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 7
    .param p0, "x0"  # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # Z
    .param p5, "x5"  # Landroid/view/KeyEvent;
    .param p6, "x6"  # Z

    .line 1003
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    return-void
.end method

.method private dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIII)V
    .registers 30
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "opPackageName"  # Ljava/lang/String;
    .param p3, "pid"  # I
    .param p4, "uid"  # I
    .param p5, "asSystemService"  # Z
    .param p6, "suggestedStream"  # I
    .param p7, "direction"  # I
    .param p8, "flags"  # I

    .line 1869
    move-object/from16 v9, p0

    move/from16 v10, p6

    move/from16 v8, p8

    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    goto :goto_23

    .line 1870
    :cond_15
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    :goto_23
    move-object v7, v0

    .line 1872
    .local v7, "session":Lcom/android/server/media/MediaSessionRecord;
    const/4 v0, 0x0

    .line 1873
    .local v0, "preferSuggestedStream":Z
    invoke-direct {v9, v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isValidLocalStreamType(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 1874
    invoke-static {v10, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1875
    const/4 v0, 0x1

    move v6, v0

    goto :goto_36

    .line 1878
    :cond_35
    move v6, v0

    .end local v0  # "preferSuggestedStream":Z
    .local v6, "preferSuggestedStream":Z
    :goto_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adjusting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p7

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", suggestedStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", preferSuggestedStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    if-eqz v7, :cond_8c

    if-eqz v6, :cond_73

    goto :goto_8c

    .line 1920
    :cond_73
    const/16 v16, 0x0

    const/16 v20, 0x1

    move-object v11, v7

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v17, p5

    move/from16 v18, p7

    move/from16 v19, p8

    invoke-virtual/range {v11 .. v20}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V

    move v13, v6

    move-object v14, v7

    goto :goto_c2

    .line 1883
    :cond_8c
    :goto_8c
    and-int/lit16 v0, v8, 0x200

    if-eqz v0, :cond_a1

    const/4 v0, 0x3

    .line 1884
    invoke-static {v0, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_a1

    .line 1885
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_a0

    .line 1886
    const-string v0, "No active session to adjust, skipping media only volume event"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_a0
    return-void

    .line 1896
    :cond_a1
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v11

    new-instance v12, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move v13, v6

    .end local v6  # "preferSuggestedStream":Z
    .local v13, "preferSuggestedStream":Z
    move/from16 v6, p7

    move-object v14, v7

    .end local v7  # "session":Lcom/android/server/media/MediaSessionRecord;
    .local v14, "session":Lcom/android/server/media/MediaSessionRecord;
    move/from16 v7, p8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;ZLjava/lang/String;IIIILjava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1923
    :goto_c2
    return-void
.end method

.method private dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 27
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "pid"  # I
    .param p3, "uid"  # I
    .param p4, "asSystemService"  # Z
    .param p5, "keyEvent"  # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"  # Z

    .line 1959
    move-object/from16 v1, p0

    move-object/from16 v10, p5

    const-string v2, ", type="

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v11

    .line 1960
    .local v11, "session":Lcom/android/server/media/MediaSessionRecord;
    const-string v12, "Failed to send callback"

    const/4 v0, -0x1

    const-string v3, "Sending "

    const-string v13, "MediaSessionService"

    if-eqz v11, :cond_d9

    .line 1962
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$4500(Lcom/android/server/media/MediaSessionService;)Landroid/app/ActivityManager;

    move-result-object v2

    if-eqz v2, :cond_51

    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$4500(Lcom/android/server/media/MediaSessionService;)Landroid/app/ActivityManager;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManager;->checkFrozen(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v2, 0x1

    goto :goto_52

    :cond_51
    const/4 v2, 0x0

    :goto_52
    move v14, v2

    .line 1968
    .local v14, "isFrozen":Z
    if-eqz v14, :cond_94

    .line 1969
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Freeze dispatchMediaKeyEventLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/meizu/pps/observer/PPSServer;->scheduleForceUnFreeze(I)V

    .line 1974
    :cond_94
    if-eqz p6, :cond_9b

    .line 1975
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 1978
    :cond_9b
    nop

    .line 1979
    if-eqz p6, :cond_a4

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$4600(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v0

    :cond_a4
    move v8, v0

    iget-object v9, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 1978
    move-object v2, v11

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    .line 1981
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    if-eqz v0, :cond_d7

    .line 1983
    :try_start_c1
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    .line 1984
    invoke-virtual {v11}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    .line 1983
    invoke-interface {v0, v10, v2}, Landroid/media/session/ICallback;->onMediaKeyEventDispatchedToMediaSession(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_d2} :catch_d3

    .line 1987
    goto :goto_d7

    .line 1985
    :catch_d3
    move-exception v0

    .line 1986
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v13, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1989
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v14  # "isFrozen":Z
    :cond_d7
    :goto_d7
    goto/16 :goto_264

    :cond_d9
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4700(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v4

    if-nez v4, :cond_f1

    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1990
    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_264

    .line 1991
    :cond_f1
    if-eqz p6, :cond_f8

    .line 1992
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 1994
    :cond_f8
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1995
    .local v4, "mediaButtonIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1996
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1999
    if-eqz p4, :cond_116

    iget-object v5, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_118

    :cond_116
    move-object/from16 v5, p1

    .line 2000
    .local v5, "callerPackageName":Ljava/lang/String;
    :goto_118
    const-string v6, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2002
    :try_start_11d
    iget-object v6, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4700(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v6

    if-eqz v6, :cond_19c

    .line 2003
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4700(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2005
    .local v2, "receiver":Landroid/app/PendingIntent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to the last known PendingIntent "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v15

    .line 2009
    if-eqz p6, :cond_15b

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$4600(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v0

    :cond_15b
    move/from16 v16, v0

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2010
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v19

    .line 2008
    move-object v14, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v0

    invoke-virtual/range {v14 .. v19}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 2011
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    if-eqz v0, :cond_19a

    .line 2012
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 2013
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4700(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2014
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_19a

    .line 2015
    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v3

    .line 2016
    invoke-interface {v3, v10, v0}, Landroid/media/session/ICallback;->onMediaKeyEventDispatchedToMediaButtonReceiver(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V

    .line 2020
    .end local v0  # "componentName":Landroid/content/ComponentName;
    .end local v2  # "receiver":Landroid/app/PendingIntent;
    :cond_19a
    goto/16 :goto_263

    .line 2021
    :cond_19c
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2022
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/content/ComponentName;

    move-result-object v0

    move-object v6, v0

    .line 2023
    .local v6, "receiver":Landroid/content/ComponentName;
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 2024
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4900(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v0

    move v7, v0

    .line 2025
    .local v7, "componentType":I
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 2026
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$5000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v0

    .line 2025
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    move-object v8, v0

    .line 2028
    .local v8, "userHandle":Landroid/os/UserHandle;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to the restored intent "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1e4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_11d .. :try_end_1e4} :catch_244
    .catch Landroid/os/RemoteException; {:try_start_11d .. :try_end_1e4} :catch_23f

    .line 2033
    const/4 v0, 0x2

    if-eq v7, v0, :cond_200

    const/4 v0, 0x3

    if-eq v7, v0, :cond_1f6

    .line 2043
    :try_start_1ea
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_20a

    .line 2045
    :catch_1f4
    move-exception v0

    goto :goto_20b

    .line 2038
    :cond_1f6
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v8}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2040
    goto :goto_20a

    .line 2035
    :cond_200
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_209
    .catch Ljava/lang/Exception; {:try_start_1ea .. :try_end_209} :catch_1f4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1ea .. :try_end_209} :catch_244
    .catch Landroid/os/RemoteException; {:try_start_1ea .. :try_end_209} :catch_23f

    .line 2036
    nop

    .line 2048
    :goto_20a
    goto :goto_225

    .line 2046
    .local v0, "e":Ljava/lang/Exception;
    :goto_20b
    :try_start_20b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error sending media button to the restored intent "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2049
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_225
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    if-eqz v0, :cond_263

    .line 2050
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    .line 2051
    invoke-interface {v0, v10, v6}, Landroid/media/session/ICallback;->onMediaKeyEventDispatchedToMediaButtonReceiver(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V
    :try_end_23e
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_20b .. :try_end_23e} :catch_244
    .catch Landroid/os/RemoteException; {:try_start_20b .. :try_end_23e} :catch_23f

    goto :goto_263

    .line 2058
    .end local v6  # "receiver":Landroid/content/ComponentName;
    .end local v7  # "componentType":I
    .end local v8  # "userHandle":Landroid/os/UserHandle;
    :catch_23f
    move-exception v0

    .line 2059
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v13, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_264

    .line 2055
    .end local v0  # "e":Landroid/os/RemoteException;
    :catch_244
    move-exception v0

    .line 2056
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending key event to media button receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2057
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$4700(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2056
    invoke-static {v13, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2060
    .end local v0  # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_263
    :goto_263
    nop

    .line 2062
    .end local v4  # "mediaButtonIntent":Landroid/content/Intent;
    .end local v5  # "callerPackageName":Ljava/lang/String;
    :cond_264
    :goto_264
    return-void
.end method

.method private dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V
    .registers 23
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "opPackageName"  # Ljava/lang/String;
    .param p3, "pid"  # I
    .param p4, "uid"  # I
    .param p5, "asSystemService"  # Z
    .param p6, "keyEvent"  # Landroid/view/KeyEvent;
    .param p7, "stream"  # I
    .param p8, "musicOnly"  # Z

    .line 1584
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 1585
    .local v0, "down":Z
    :goto_b
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_12

    move v1, v2

    .line 1586
    .local v1, "up":Z
    :cond_12
    const/4 v2, 0x0

    .line 1587
    .local v2, "direction":I
    const/4 v3, 0x0

    .line 1588
    .local v3, "isMute":Z
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0x18

    if-eq v4, v5, :cond_29

    const/16 v5, 0x19

    if-eq v4, v5, :cond_27

    const/16 v5, 0xa4

    if-eq v4, v5, :cond_25

    goto :goto_2b

    .line 1596
    :cond_25
    const/4 v3, 0x1

    goto :goto_2b

    .line 1593
    :cond_27
    const/4 v2, -0x1

    .line 1594
    goto :goto_2b

    .line 1590
    :cond_29
    const/4 v2, 0x1

    .line 1591
    nop

    .line 1599
    :goto_2b
    if-nez v0, :cond_2f

    if-eqz v1, :cond_79

    .line 1600
    :cond_2f
    const/16 v4, 0x1000

    .line 1601
    .local v4, "flags":I
    if-eqz p8, :cond_36

    .line 1603
    or-int/lit16 v4, v4, 0x200

    goto :goto_3d

    .line 1606
    :cond_36
    if-eqz v1, :cond_3b

    .line 1607
    or-int/lit8 v4, v4, 0x14

    goto :goto_3d

    .line 1609
    :cond_3b
    or-int/lit8 v4, v4, 0x11

    .line 1612
    :goto_3d
    if-eqz v2, :cond_5d

    .line 1614
    if-eqz v1, :cond_42

    .line 1615
    const/4 v2, 0x0

    .line 1618
    :cond_42
    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_4b

    const/high16 v5, 0x40000

    or-int/2addr v4, v5

    .line 1620
    :cond_4b
    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p7

    move v12, v2

    move v13, v4

    invoke-direct/range {v5 .. v13}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIII)V

    goto :goto_79

    .line 1622
    :cond_5d
    if-eqz v3, :cond_79

    .line 1623
    if-eqz v0, :cond_79

    invoke-virtual/range {p6 .. p6}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_79

    .line 1624
    const/16 v12, 0x65

    move-object v5, p0

    move-object v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p7

    move v13, v4

    invoke-direct/range {v5 .. v13}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIII)V

    .line 1629
    .end local v4  # "flags":I
    :cond_79
    :goto_79
    return-void
.end method

.method private handleVoiceKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .registers 19
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "pid"  # I
    .param p3, "uid"  # I
    .param p4, "asSystemService"  # Z
    .param p5, "keyEvent"  # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"  # Z

    .line 1927
    move-object v7, p0

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    .line 1928
    .local v8, "action":I
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    move v9, v0

    .line 1929
    .local v9, "isLongPress":Z
    if-nez v8, :cond_25

    .line 1930
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_22

    .line 1931
    iput-boolean v1, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 1932
    iput-boolean v2, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    move-object/from16 v10, p5

    goto :goto_55

    .line 1930
    :cond_22
    move-object/from16 v10, p5

    goto :goto_55

    .line 1942
    :cond_25
    if-ne v8, v1, :cond_53

    .line 1943
    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    if-eqz v0, :cond_50

    .line 1944
    iput-boolean v2, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 1945
    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    if-nez v0, :cond_4d

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1947
    move-object/from16 v10, p5

    invoke-static {v10, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v11

    .line 1948
    .local v11, "downEvent":Landroid/view/KeyEvent;
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v5, v11

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 1950
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    goto :goto_55

    .line 1945
    .end local v11  # "downEvent":Landroid/view/KeyEvent;
    :cond_4d
    move-object/from16 v10, p5

    goto :goto_55

    .line 1943
    :cond_50
    move-object/from16 v10, p5

    goto :goto_55

    .line 1942
    :cond_53
    move-object/from16 v10, p5

    .line 1955
    :goto_55
    return-void
.end method

.method private hasMediaControlPermission(ILjava/lang/String;II)Z
    .registers 13
    .param p1, "resolvedUserId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "pid"  # I
    .param p4, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1827
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p3, p4}, Lcom/android/server/media/MediaSessionService;->access$4100(Lcom/android/server/media/MediaSessionService;II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 1828
    return v1

    .line 1834
    :cond_a
    const/16 v0, 0x3e8

    if-eq p4, v0, :cond_8e

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v2, p3, p4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_8e

    .line 1838
    :cond_1d
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    const-string v2, " (uid="

    const-string v3, "MediaSessionService"

    if-eqz v0, :cond_3f

    .line 1839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") hasn\'t granted MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :cond_3f
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1844
    .local v0, "userId":I
    const/4 v4, 0x0

    if-eq p1, v0, :cond_47

    .line 1845
    return v4

    .line 1850
    :cond_47
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1851
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$4200(Lcom/android/server/media/MediaSessionService;)Landroid/app/INotificationManager;

    move-result-object v5

    invoke-interface {v5, v0}, Landroid/app/INotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v5

    .line 1852
    .local v5, "enabledNotificationListeners":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v5, :cond_6f

    .line 1853
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_54
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6f

    .line 1854
    nop

    .line 1855
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1854
    invoke-static {p2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 1856
    return v1

    .line 1853
    :cond_6c
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 1860
    .end local v6  # "i":I
    :cond_6f
    sget-boolean v1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v1, :cond_8d

    .line 1861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") doesn\'t have an enabled notification listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :cond_8d
    return v4

    .line 1837
    .end local v0  # "userId":I
    .end local v5  # "enabledNotificationListeners":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_8e
    :goto_8e
    return v1
.end method

.method private isUserSetupComplete()Z
    .registers 5

    .line 2108
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
    .param p1, "streamType"  # I

    .line 2114
    if-ltz p1, :cond_7

    const/4 v0, 0x5

    if-gt p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isVoiceKey(I)Z
    .registers 3
    .param p1, "keyCode"  # I

    .line 2103
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_13

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2104
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$5300(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x55

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 2103
    :goto_14
    return v0
.end method

.method private startVoiceInput(Z)V
    .registers 10
    .param p1, "needWakeLock"  # Z

    .line 2065
    const/4 v0, 0x0

    .line 2071
    .local v0, "voiceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 2072
    .local v1, "pm":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$5100(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$5100(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_28

    move v2, v3

    goto :goto_29

    :cond_28
    move v2, v4

    .line 2073
    .local v2, "isLocked":Z
    :goto_29
    const-string v5, "MediaSessionService"

    if-nez v2, :cond_42

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 2074
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 2075
    const-string/jumbo v3, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 2077
    :cond_42
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 2078
    if-eqz v2, :cond_59

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2079
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$5100(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v6

    if-eqz v6, :cond_59

    goto :goto_5a

    :cond_59
    move v3, v4

    .line 2078
    :goto_5a
    const-string v4, "android.speech.extras.EXTRA_SECURE"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2080
    const-string/jumbo v3, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    :goto_65
    if-eqz p1, :cond_70

    .line 2084
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$5200(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2087
    :cond_70
    nop

    .line 2088
    const/high16 v3, 0x10800000

    :try_start_73
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2090
    sget-boolean v3, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v3, :cond_8f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "voiceIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    :cond_8f
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_73 .. :try_end_9a} :catch_a8
    .catchall {:try_start_73 .. :try_end_9a} :catchall_a6

    .line 2096
    if-eqz p1, :cond_c1

    .line 2097
    :goto_9c
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$5200(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_c1

    .line 2096
    :catchall_a6
    move-exception v3

    goto :goto_c2

    .line 2093
    :catch_a8
    move-exception v3

    .line 2094
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    :try_start_a9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity for search: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_a9 .. :try_end_bd} :catchall_a6

    .line 2096
    nop

    .end local v3  # "e":Landroid/content/ActivityNotFoundException;
    if-eqz p1, :cond_c1

    .line 2097
    goto :goto_9c

    .line 2100
    :cond_c1
    :goto_c1
    return-void

    .line 2096
    :goto_c2
    if-eqz p1, :cond_cd

    .line 2097
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$5200(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_cd
    throw v3
.end method

.method private verifySessionsRequest(Landroid/content/ComponentName;III)I
    .registers 14
    .param p1, "componentName"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I
    .param p3, "pid"  # I
    .param p4, "uid"  # I

    .line 1807
    const/4 v0, 0x0

    .line 1808
    .local v0, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_c

    .line 1811
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1812
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, v0, p4}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 1816
    :cond_c
    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v7, "getSessions"

    move v2, p3

    move v3, p4

    move v4, p2

    move-object v8, v0

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1820
    .local v1, "resolvedUserId":I
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2, p1, p3, p4, v1}, Lcom/android/server/media/MediaSessionService;->access$4000(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V

    .line 1821
    return v1
.end method


# virtual methods
.method public addSession2TokensListener(Landroid/media/session/ISession2TokensListener;I)V
    .registers 14
    .param p1, "listener"  # Landroid/media/session/ISession2TokensListener;
    .param p2, "userId"  # I

    .line 1149
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1150
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1151
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1155
    .local v9, "token":J
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_e
    const-string v5, "addSession2TokensListener"

    const/4 v6, 0x0

    move v0, v7

    move v1, v8

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1158
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_4d

    .line 1159
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2, p1}, Lcom/android/server/media/MediaSessionService;->access$2500(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I

    move-result v2

    .line 1160
    .local v2, "index":I
    if-ltz v2, :cond_33

    .line 1161
    const-string v3, "MediaSessionService"

    const-string v4, "addSession2TokensListener is already added, ignoring"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_4a

    .line 1168
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1162
    return-void

    .line 1164
    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {v4, v5, p1, v0}, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    nop

    .end local v2  # "index":I
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_4a

    .line 1168
    .end local v0  # "resolvedUserId":I
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1169
    nop

    .line 1170
    return-void

    .line 1166
    .restart local v0  # "resolvedUserId":I
    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    .end local v7  # "pid":I
    .end local v8  # "uid":I
    .end local v9  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "listener":Landroid/media/session/ISession2TokensListener;
    .end local p2  # "userId":I
    :try_start_4c
    throw v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    .line 1168
    .end local v0  # "resolvedUserId":I
    .restart local v7  # "pid":I
    .restart local v8  # "uid":I
    .restart local v9  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "listener":Landroid/media/session/ISession2TokensListener;
    .restart local p2  # "userId":I
    :catchall_4d
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V
    .registers 21
    .param p1, "listener"  # Landroid/media/session/IActiveSessionsListener;
    .param p2, "componentName"  # Landroid/content/ComponentName;
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1103
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 1104
    .local v9, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1105
    .local v10, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1108
    .local v11, "token":J
    move-object/from16 v13, p2

    move/from16 v14, p3

    :try_start_12
    invoke-direct {v1, v13, v14, v9, v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v6

    .line 1109
    .local v6, "resolvedUserId":I
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_6f

    .line 1110
    :try_start_1d
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object/from16 v8, p1

    invoke-static {v0, v8}, Lcom/android/server/media/MediaSessionService;->access$2400(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v0

    move v7, v0

    .line 1111
    .local v7, "index":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_35

    .line 1112
    const-string v0, "MediaSessionService"

    const-string v2, "ActiveSessionsListener is already added, ignoring"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    monitor-exit v15
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_6c

    .line 1126
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1113
    return-void

    .line 1115
    :cond_35
    :try_start_35
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object v2, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v16, v7

    .end local v7  # "index":I
    .local v16, "index":I
    move v7, v9

    move v8, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_6c

    move-object v2, v0

    .line 1118
    .local v2, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_46
    invoke-interface/range {p1 .. p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4e} :catch_5f
    .catchall {:try_start_46 .. :try_end_4e} :catchall_6c

    .line 1122
    nop

    .line 1123
    :try_start_4f
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    nop

    .end local v2  # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v16  # "index":I
    monitor-exit v15
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_6c

    .line 1126
    .end local v6  # "resolvedUserId":I
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1127
    nop

    .line 1128
    return-void

    .line 1119
    .restart local v2  # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .restart local v6  # "resolvedUserId":I
    .restart local v16  # "index":I
    :catch_5f
    move-exception v0

    .line 1120
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_60
    const-string v3, "MediaSessionService"

    const-string v4, "ActiveSessionsListener is dead, ignoring it"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1121
    monitor-exit v15
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_6c

    .line 1126
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1121
    return-void

    .line 1124
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v2  # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v16  # "index":I
    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit v15
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    .end local v9  # "pid":I
    .end local v10  # "uid":I
    .end local v11  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "listener":Landroid/media/session/IActiveSessionsListener;
    .end local p2  # "componentName":Landroid/content/ComponentName;
    .end local p3  # "userId":I
    :try_start_6e
    throw v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    .line 1126
    .end local v6  # "resolvedUserId":I
    .restart local v9  # "pid":I
    .restart local v10  # "uid":I
    .restart local v11  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "listener":Landroid/media/session/IActiveSessionsListener;
    .restart local p2  # "componentName":Landroid/content/ComponentName;
    .restart local p3  # "userId":I
    :catchall_6f
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/session/ISession;
    .registers 21
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "cb"  # Landroid/media/session/ISessionCallback;
    .param p3, "tag"  # Ljava/lang/String;
    .param p4, "sessionInfo"  # Landroid/os/Bundle;
    .param p5, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1014
    move-object v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 1015
    .local v10, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1016
    .local v11, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1018
    .local v12, "token":J
    :try_start_d
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_46

    move-object/from16 v14, p1

    :try_start_11
    invoke-static {v0, v14, v11}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 1019
    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "createSession"

    move v2, v10

    move v3, v11

    move/from16 v4, p5

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1021
    .local v5, "resolvedUserId":I
    if-eqz p2, :cond_3c

    .line 1024
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move v3, v10

    move v4, v11

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/android/server/media/MediaSessionService;->access$2200(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Landroid/os/Bundle;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 1025
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getSessionBinder()Landroid/media/session/ISession;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_11 .. :try_end_38} :catchall_44

    .line 1027
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1024
    return-object v0

    .line 1022
    :cond_3c
    :try_start_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Controller callback cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10  # "pid":I
    .end local v11  # "uid":I
    .end local v12  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "cb":Landroid/media/session/ISessionCallback;
    .end local p3  # "tag":Ljava/lang/String;
    .end local p4  # "sessionInfo":Landroid/os/Bundle;
    .end local p5  # "userId":I
    throw v0
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_44

    .line 1027
    .end local v5  # "resolvedUserId":I
    .restart local v10  # "pid":I
    .restart local v11  # "uid":I
    .restart local v12  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "cb":Landroid/media/session/ISessionCallback;
    .restart local p3  # "tag":Ljava/lang/String;
    .restart local p4  # "sessionInfo":Landroid/os/Bundle;
    .restart local p5  # "userId":I
    :catchall_44
    move-exception v0

    goto :goto_49

    :catchall_46
    move-exception v0

    move-object/from16 v14, p1

    :goto_49
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public dispatchAdjustVolume(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 22
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "opPackageName"  # Ljava/lang/String;
    .param p3, "suggestedStream"  # I
    .param p4, "delta"  # I
    .param p5, "flags"  # I

    .line 1703
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 1704
    .local v10, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1705
    .local v11, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1707
    .local v12, "token":J
    move-object/from16 v14, p0

    :try_start_e
    iget-object v0, v14, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_30

    .line 1708
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v10

    move v5, v11

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    :try_start_24
    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;Ljava/lang/String;IIZIII)V

    .line 1710
    monitor-exit v15
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_2d

    .line 1712
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1713
    nop

    .line 1714
    return-void

    .line 1710
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v15
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    .end local v10  # "pid":I
    .end local v11  # "uid":I
    .end local v12  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "opPackageName":Ljava/lang/String;
    .end local p3  # "suggestedStream":I
    .end local p4  # "delta":I
    .end local p5  # "flags":I
    :try_start_2f
    throw v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 1712
    .restart local v10  # "pid":I
    .restart local v11  # "uid":I
    .restart local v12  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "opPackageName":Ljava/lang/String;
    .restart local p3  # "suggestedStream":I
    .restart local p4  # "delta":I
    .restart local p5  # "flags":I
    :catchall_30
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    .registers 25
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "asSystemService"  # Z
    .param p3, "keyEvent"  # Landroid/view/KeyEvent;
    .param p4, "needWakeLock"  # Z

    .line 1219
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    if-eqz v11, :cond_146

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaSessionKey(I)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_146

    .line 1224
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1225
    .local v12, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1226
    .local v13, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1228
    .local v14, "token":J
    :try_start_1e
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_141

    if-eqz v0, :cond_66

    .line 1229
    :try_start_22
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMediaKeyEvent, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_5f

    move-object/from16 v9, p1

    :try_start_30
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", asSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_48
    .catchall {:try_start_30 .. :try_end_48} :catchall_5d

    move/from16 v8, p2

    :try_start_4a
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 1275
    :catchall_5d
    move-exception v0

    goto :goto_62

    :catchall_5f
    move-exception v0

    move-object/from16 v9, p1

    :goto_62
    move/from16 v8, p2

    goto/16 :goto_142

    .line 1228
    :cond_66
    move-object/from16 v9, p1

    move/from16 v8, p2

    .line 1233
    :goto_6a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 1236
    const-string v0, "MediaSessionService"

    const-string v1, "Not dispatching media key event because user setup is in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_4a .. :try_end_77} :catchall_141

    .line 1275
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1238
    return-void

    .line 1241
    :cond_7b
    :try_start_7b
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_82
    .catchall {:try_start_7b .. :try_end_82} :catchall_141

    .line 1242
    :try_start_82
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    move/from16 v17, v0

    .line 1243
    .local v17, "isGlobalPriorityActive":Z
    if-eqz v17, :cond_9c

    const/16 v0, 0x3e8

    if-eq v13, v0, :cond_9c

    .line 1246
    const-string v0, "MediaSessionService"

    const-string v1, "Only the system can dispatch media key event to the global priority session."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    monitor-exit v16
    :try_end_98
    .catchall {:try_start_82 .. :try_end_98} :catchall_13e

    .line 1275
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1248
    return-void

    .line 1250
    :cond_9c
    if-nez v17, :cond_10d

    .line 1251
    :try_start_9e
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v0

    if-eqz v0, :cond_10d

    .line 1253
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
    :try_end_c5
    .catchall {:try_start_9e .. :try_end_c5} :catchall_13e

    .line 1256
    :try_start_c5
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
    :try_end_ec
    .catch Landroid/os/RemoteException; {:try_start_c5 .. :try_end_ec} :catch_f1
    .catchall {:try_start_c5 .. :try_end_ec} :catchall_13e

    .line 1259
    :try_start_ec
    monitor-exit v16
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_13e

    .line 1275
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1259
    return-void

    .line 1260
    :catch_f1
    move-exception v0

    .line 1261
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_f2
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to the media key listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_10d
    if-nez v17, :cond_129

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {v10, v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 1267
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v12

    move v4, v13

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    goto :goto_138

    .line 1270
    :cond_129
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v12

    move v4, v13

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 1273
    .end local v17  # "isGlobalPriorityActive":Z
    :goto_138
    monitor-exit v16
    :try_end_139
    .catchall {:try_start_f2 .. :try_end_139} :catchall_13e

    .line 1275
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1276
    nop

    .line 1277
    return-void

    .line 1273
    :catchall_13e
    move-exception v0

    :try_start_13f
    monitor-exit v16
    :try_end_140
    .catchall {:try_start_13f .. :try_end_140} :catchall_13e

    .end local v12  # "pid":I
    .end local v13  # "uid":I
    .end local v14  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "asSystemService":Z
    .end local p3  # "keyEvent":Landroid/view/KeyEvent;
    .end local p4  # "needWakeLock":Z
    :try_start_140
    throw v0
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_141

    .line 1275
    .restart local v12  # "pid":I
    .restart local v13  # "uid":I
    .restart local v14  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "asSystemService":Z
    .restart local p3  # "keyEvent":Landroid/view/KeyEvent;
    .restart local p4  # "needWakeLock":Z
    :catchall_141
    move-exception v0

    :goto_142
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1220
    .end local v12  # "pid":I
    .end local v13  # "uid":I
    .end local v14  # "token":J
    :cond_146
    :goto_146
    const-string v0, "MediaSessionService"

    const-string v1, "Attempted to dispatch null or non-media key event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    return-void
.end method

.method public dispatchMediaKeyEventToSessionAsSystemService(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/view/KeyEvent;)Z
    .registers 22
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "sessionToken"  # Landroid/media/session/MediaSession$Token;
    .param p3, "keyEvent"  # Landroid/view/KeyEvent;

    .line 1294
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1295
    .local v11, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1296
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1298
    .local v13, "token":J
    :try_start_10
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_9b

    .line 1299
    :try_start_17
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionService;->access$2800(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 1300
    .local v0, "record":Lcom/android/server/media/MediaSessionRecord;
    if-nez v0, :cond_2c

    .line 1301
    const-string v3, "MediaSessionService"

    const-string v4, "Failed to find session to dispatch key event."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const/4 v3, 0x0

    monitor-exit v15
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_98

    .line 1313
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1302
    return v3

    .line 1304
    :cond_2c
    :try_start_2c
    sget-boolean v3, Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_98

    if-eqz v3, :cond_7b

    .line 1305
    :try_start_30
    const-string v3, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMediaKeyEventToSessionAsSystemService, pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_75

    move-object/from16 v10, p1

    :try_start_3e
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sessionToken="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", event="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5e
    .catchall {:try_start_3e .. :try_end_5e} :catchall_73

    move-object/from16 v9, p3

    :try_start_60
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", session="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 1311
    .end local v0  # "record":Lcom/android/server/media/MediaSessionRecord;
    :catchall_73
    move-exception v0

    goto :goto_78

    :catchall_75
    move-exception v0

    move-object/from16 v10, p1

    :goto_78
    move-object/from16 v9, p3

    goto :goto_99

    .line 1304
    .restart local v0  # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_7b
    move-object/from16 v10, p1

    move-object/from16 v9, p3

    .line 1309
    :goto_7f
    const/4 v7, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v3, v0

    move-object/from16 v4, p1

    move v5, v11

    move v6, v12

    move-object/from16 v8, p3

    move/from16 v9, v16

    move-object/from16 v10, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    move-result v3

    monitor-exit v15
    :try_end_94
    .catchall {:try_start_60 .. :try_end_94} :catchall_98

    .line 1313
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1309
    return v3

    .line 1311
    .end local v0  # "record":Lcom/android/server/media/MediaSessionRecord;
    :catchall_98
    move-exception v0

    :goto_99
    :try_start_99
    monitor-exit v15
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    .end local v11  # "pid":I
    .end local v12  # "uid":I
    .end local v13  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "sessionToken":Landroid/media/session/MediaSession$Token;
    .end local p3  # "keyEvent":Landroid/view/KeyEvent;
    :try_start_9a
    throw v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9b

    .line 1313
    .restart local v11  # "pid":I
    .restart local v12  # "uid":I
    .restart local v13  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "sessionToken":Landroid/media/session/MediaSession$Token;
    .restart local p3  # "keyEvent":Landroid/view/KeyEvent;
    :catchall_9b
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public dispatchVolumeKeyEvent(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)V
    .registers 28
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "opPackageName"  # Ljava/lang/String;
    .param p3, "asSystemService"  # Z
    .param p4, "keyEvent"  # Landroid/view/KeyEvent;
    .param p5, "stream"  # I
    .param p6, "musicOnly"  # Z

    .line 1506
    move-object/from16 v10, p0

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    if-eqz v11, :cond_1c9

    .line 1507
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_24

    .line 1508
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_24

    .line 1509
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_24

    goto/16 :goto_1c9

    .line 1514
    :cond_24
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 1515
    .local v14, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 1516
    .local v15, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1519
    .local v16, "token":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchVolumeKeyEvent, pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", opPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", asSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", musicOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :try_start_84
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_1c4

    .line 1527
    :try_start_8b
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-nez v0, :cond_1a8

    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1528
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v0

    if-nez v0, :cond_a1

    goto/16 :goto_1a8

    .line 1534
    :cond_a1
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_133

    .line 1535
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_f2

    .line 1537
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 1538
    invoke-static/range {p4 .. p4}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v2

    .line 1537
    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3302(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 1539
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3402(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I

    .line 1540
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3502(Lcom/android/server/media/MediaSessionService$FullUserRecord;Z)Z

    .line 1541
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v2, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1542
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v2

    iget-object v3, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1544
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v3

    const/4 v4, 0x0

    .line 1542
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/media/MediaSessionService$MessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    iget-object v3, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1545
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$3600(Lcom/android/server/media/MediaSessionService;)I

    move-result v3

    int-to-long v3, v3

    .line 1541
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/media/MediaSessionService$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1547
    :cond_f2
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_fe

    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1bb

    .line 1548
    :cond_fe
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeMessages(I)V

    .line 1549
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_12c

    .line 1550
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v1, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1551
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 1550
    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService;->access$3700(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    .line 1553
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3302(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 1555
    :cond_12c
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v11}, Lcom/android/server/media/MediaSessionService;->access$3700(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    goto/16 :goto_1bb

    .line 1558
    :cond_133
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeMessages(I)V

    .line 1559
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_1a2

    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1560
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1561
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a2

    .line 1563
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1565
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v0

    iget-object v1, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1566
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v19

    iget-object v1, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1567
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1400(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Z

    move-result v20

    .line 1563
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v14

    move v5, v15

    move/from16 v6, p3

    move-object v7, v0

    move/from16 v8, v19

    move/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 1568
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v14

    move v5, v15

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    goto :goto_1bb

    .line 1571
    :cond_1a2
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v11}, Lcom/android/server/media/MediaSessionService;->access$3700(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    goto :goto_1bb

    .line 1529
    :cond_1a8
    :goto_1a8
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v14

    move v5, v15

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 1575
    :cond_1bb
    :goto_1bb
    monitor-exit v18
    :try_end_1bc
    .catchall {:try_start_8b .. :try_end_1bc} :catchall_1c1

    .line 1577
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1578
    nop

    .line 1579
    return-void

    .line 1575
    :catchall_1c1
    move-exception v0

    :try_start_1c2
    monitor-exit v18
    :try_end_1c3
    .catchall {:try_start_1c2 .. :try_end_1c3} :catchall_1c1

    .end local v14  # "pid":I
    .end local v15  # "uid":I
    .end local v16  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "opPackageName":Ljava/lang/String;
    .end local p3  # "asSystemService":Z
    .end local p4  # "keyEvent":Landroid/view/KeyEvent;
    .end local p5  # "stream":I
    .end local p6  # "musicOnly":Z
    :try_start_1c3
    throw v0
    :try_end_1c4
    .catchall {:try_start_1c3 .. :try_end_1c4} :catchall_1c4

    .line 1577
    .restart local v14  # "pid":I
    .restart local v15  # "uid":I
    .restart local v16  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "opPackageName":Ljava/lang/String;
    .restart local p3  # "asSystemService":Z
    .restart local p4  # "keyEvent":Landroid/view/KeyEvent;
    .restart local p5  # "stream":I
    .restart local p6  # "musicOnly":Z
    :catchall_1c4
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1510
    .end local v14  # "pid":I
    .end local v15  # "uid":I
    .end local v16  # "token":J
    :cond_1c9
    :goto_1c9
    const-string v0, "MediaSessionService"

    const-string v1, "Attempted to dispatch null or non-volume key event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    return-void
.end method

.method public dispatchVolumeKeyEventToSessionAsSystemService(Ljava/lang/String;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/view/KeyEvent;)V
    .registers 30
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "opPackageName"  # Ljava/lang/String;
    .param p3, "sessionToken"  # Landroid/media/session/MediaSession$Token;
    .param p4, "keyEvent"  # Landroid/view/KeyEvent;

    .line 1646
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 1647
    .local v15, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 1648
    .local v14, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1650
    .local v22, "token":J
    :try_start_10
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_125

    .line 1651
    :try_start_17
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v11}, Lcom/android/server/media/MediaSessionService;->access$2800(Lcom/android/server/media/MediaSessionService;Landroid/media/session/MediaSession$Token;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_116

    .line 1652
    .local v0, "record":Lcom/android/server/media/MediaSessionRecord;
    if-nez v0, :cond_5b

    .line 1653
    :try_start_1f
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find session to dispatch key event, token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Fallbacks to the default handling."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    const/4 v6, 0x1

    const/high16 v8, -0x80000000

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v15

    move v5, v14

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 1657
    monitor-exit v24
    :try_end_4c
    .catchall {:try_start_1f .. :try_end_4c} :catchall_50

    .line 1696
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1657
    return-void

    .line 1694
    .end local v0  # "record":Lcom/android/server/media/MediaSessionRecord;
    :catchall_50
    move-exception v0

    move-object/from16 v3, p1

    :goto_53
    move-object/from16 v4, p2

    :goto_55
    move-object/from16 v5, p4

    :goto_57
    move v2, v14

    move v6, v15

    goto/16 :goto_11f

    .line 1659
    .restart local v0  # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_5b
    :try_start_5b
    sget-boolean v1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    :try_end_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_116

    if-eqz v1, :cond_b2

    .line 1660
    :try_start_5f
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchVolumeKeyEventToSessionAsSystemService, pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_50

    move-object/from16 v3, p1

    :try_start_6d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", opPkg="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_b0

    move-object/from16 v4, p2

    :try_start_77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", pid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sessionToken="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", event="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_97
    .catchall {:try_start_77 .. :try_end_97} :catchall_ae

    move-object/from16 v5, p4

    :try_start_99
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", session="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ab
    .catchall {:try_start_99 .. :try_end_ab} :catchall_ac

    goto :goto_b8

    .line 1694
    .end local v0  # "record":Lcom/android/server/media/MediaSessionRecord;
    :catchall_ac
    move-exception v0

    goto :goto_57

    :catchall_ae
    move-exception v0

    goto :goto_55

    :catchall_b0
    move-exception v0

    goto :goto_53

    .line 1659
    .restart local v0  # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_b2
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    .line 1665
    :goto_b8
    :try_start_b8
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getAction()I

    move-result v1
    :try_end_bc
    .catchall {:try_start_b8 .. :try_end_bc} :catchall_114

    if-eqz v1, :cond_dd

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c4

    move v2, v14

    move v6, v15

    goto :goto_10e

    .line 1686
    :cond_c4
    const/16 v1, 0x1014

    .line 1689
    .local v1, "flags":I
    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1014

    const/16 v21, 0x0

    move-object v12, v0

    move-object/from16 v13, p1

    move v2, v14

    .end local v14  # "uid":I
    .local v2, "uid":I
    move-object/from16 v14, p2

    move v6, v15

    .end local v15  # "pid":I
    .local v6, "pid":I
    move/from16 v16, v2

    :try_start_d9
    invoke-virtual/range {v12 .. v21}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V

    goto :goto_10e

    .line 1667
    .end local v1  # "flags":I
    .end local v2  # "uid":I
    .end local v6  # "pid":I
    .restart local v14  # "uid":I
    .restart local v15  # "pid":I
    :cond_dd
    move v2, v14

    move v6, v15

    .end local v14  # "uid":I
    .end local v15  # "pid":I
    .restart local v2  # "uid":I
    .restart local v6  # "pid":I
    const/4 v1, 0x0

    .line 1668
    .local v1, "direction":I
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x18

    if-eq v7, v8, :cond_f6

    const/16 v8, 0x19

    if-eq v7, v8, :cond_f4

    const/16 v8, 0xa4

    if-eq v7, v8, :cond_f1

    goto :goto_f8

    .line 1676
    :cond_f1
    const/16 v1, 0x65

    goto :goto_f8

    .line 1673
    :cond_f4
    const/4 v1, -0x1

    .line 1674
    goto :goto_f8

    .line 1670
    :cond_f6
    const/4 v1, 0x1

    .line 1671
    nop

    .line 1679
    :goto_f8
    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v12, v0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move v15, v6

    move/from16 v16, v2

    move/from16 v19, v1

    invoke-virtual/range {v12 .. v21}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V

    .line 1682
    nop

    .line 1694
    .end local v0  # "record":Lcom/android/server/media/MediaSessionRecord;
    .end local v1  # "direction":I
    :goto_10e
    monitor-exit v24
    :try_end_10f
    .catchall {:try_start_d9 .. :try_end_10f} :catchall_123

    .line 1696
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1697
    nop

    .line 1698
    return-void

    .line 1694
    .end local v2  # "uid":I
    .end local v6  # "pid":I
    .restart local v14  # "uid":I
    .restart local v15  # "pid":I
    :catchall_114
    move-exception v0

    goto :goto_11d

    :catchall_116
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    :goto_11d
    move v2, v14

    move v6, v15

    .end local v14  # "uid":I
    .end local v15  # "pid":I
    .restart local v2  # "uid":I
    .restart local v6  # "pid":I
    :goto_11f
    :try_start_11f
    monitor-exit v24
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_123

    .end local v2  # "uid":I
    .end local v6  # "pid":I
    .end local v22  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "opPackageName":Ljava/lang/String;
    .end local p3  # "sessionToken":Landroid/media/session/MediaSession$Token;
    .end local p4  # "keyEvent":Landroid/view/KeyEvent;
    :try_start_120
    throw v0
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_121

    .line 1696
    .restart local v2  # "uid":I
    .restart local v6  # "pid":I
    .restart local v22  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "opPackageName":Ljava/lang/String;
    .restart local p3  # "sessionToken":Landroid/media/session/MediaSession$Token;
    .restart local p4  # "keyEvent":Landroid/view/KeyEvent;
    :catchall_121
    move-exception v0

    goto :goto_12e

    .line 1694
    :catchall_123
    move-exception v0

    goto :goto_11f

    .line 1696
    .end local v2  # "uid":I
    .end local v6  # "pid":I
    .restart local v14  # "uid":I
    .restart local v15  # "pid":I
    :catchall_125
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move v2, v14

    move v6, v15

    .end local v14  # "uid":I
    .end local v15  # "pid":I
    .restart local v2  # "uid":I
    .restart local v6  # "pid":I
    :goto_12e
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 1755
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 1757
    :cond_f
    const-string v0, "MEDIA SESSION SERVICE (dumpsys media_session)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1758
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1760
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1761
    :try_start_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessions listeners."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global priority session is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1763
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    if-eqz v1, :cond_69

    .line 1764
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, p2, v2}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1766
    :cond_69
    const-string v1, "User Records:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1767
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$3900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1768
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_79
    if-ge v2, v1, :cond_8f

    .line 1769
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$3900(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    const-string v4, ""

    invoke-virtual {v3, p2, v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1768
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    .line 1771
    .end local v2  # "i":I
    :cond_8f
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$600(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, p2, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->dump(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1772
    .end local v1  # "count":I
    monitor-exit v0

    .line 1773
    return-void

    .line 1772
    :catchall_a2
    move-exception v1

    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_1e .. :try_end_a4} :catchall_a2

    throw v1
.end method

.method public getSession2Tokens(I)Landroid/content/pm/ParceledListSlice;
    .registers 13
    .param p1, "userId"  # I

    .line 1080
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1081
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1082
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1087
    .local v9, "token":J
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_e
    const-string v5, "getSession2Tokens"

    const/4 v6, 0x0

    move v0, v7

    move v1, v8

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1091
    .local v0, "resolvedUserId":I
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_32

    .line 1092
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2, v0}, Lcom/android/server/media/MediaSessionService;->getSession2TokensLocked(I)Ljava/util/List;

    move-result-object v2

    .line 1093
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Landroid/media/Session2Token;>;"
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2f

    .line 1094
    :try_start_26
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_32

    .line 1096
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1094
    return-object v1

    .line 1093
    .end local v2  # "result":Ljava/util/List;, "Ljava/util/List<Landroid/media/Session2Token;>;"
    :catchall_2f
    move-exception v2

    :try_start_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    .end local v7  # "pid":I
    .end local v8  # "uid":I
    .end local v9  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "userId":I
    :try_start_31
    throw v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 1096
    .end local v0  # "resolvedUserId":I
    .restart local v7  # "pid":I
    .restart local v8  # "uid":I
    .restart local v9  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "userId":I
    :catchall_32
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getSessions(Landroid/content/ComponentName;I)Ljava/util/List;
    .registers 14
    .param p1, "componentName"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I
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

    .line 1059
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1060
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1061
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1064
    .local v2, "token":J
    :try_start_c
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 1065
    .local v4, "resolvedUserId":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    .local v5, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_44

    .line 1067
    :try_start_1c
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7, v4}, Lcom/android/server/media/MediaSessionService;->access$2300(Lcom/android/server/media/MediaSessionService;I)Ljava/util/List;

    move-result-object v7

    .line 1068
    .local v7, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_26
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/media/MediaSessionRecord;

    .line 1069
    .local v9, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    nop

    .end local v9  # "record":Lcom/android/server/media/MediaSessionRecord;
    goto :goto_26

    .line 1071
    .end local v7  # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    :cond_3b
    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_41

    .line 1072
    nop

    .line 1074
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1072
    return-object v5

    .line 1071
    :catchall_41
    move-exception v7

    :try_start_42
    monitor-exit v6
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    .end local v0  # "pid":I
    .end local v1  # "uid":I
    .end local v2  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "componentName":Landroid/content/ComponentName;
    .end local p2  # "userId":I
    :try_start_43
    throw v7
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    .line 1074
    .end local v4  # "resolvedUserId":I
    .end local v5  # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/session/MediaSession$Token;>;"
    .restart local v0  # "pid":I
    .restart local v1  # "uid":I
    .restart local v2  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "componentName":Landroid/content/ComponentName;
    .restart local p2  # "userId":I
    :catchall_44
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isGlobalPriorityActive()Z
    .registers 3

    .line 1748
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1749
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1500(Lcom/android/server/media/MediaSessionService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1750
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isTrusted(Ljava/lang/String;II)Z
    .registers 8
    .param p1, "controllerPackageName"  # Ljava/lang/String;
    .param p2, "controllerPid"  # I
    .param p3, "controllerUid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1786
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1787
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1797
    .local v1, "token":J
    :try_start_8
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {p0, v3, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->hasMediaControlPermission(ILjava/lang/String;II)Z

    move-result v3
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_14

    .line 1800
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1797
    return v3

    .line 1800
    :catchall_14
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public notifySession2Created(Landroid/media/Session2Token;)V
    .registers 10
    .param p1, "sessionToken"  # Landroid/media/Session2Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1033
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1034
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1035
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1037
    .local v2, "token":J
    :try_start_c
    sget-boolean v4, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v4, :cond_26

    .line 1038
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session2 is created "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_26
    invoke-virtual {p1}, Landroid/media/Session2Token;->getUid()I

    move-result v4

    if-ne v1, v4, :cond_56

    .line 1044
    new-instance v4, Lcom/android/server/media/MediaSessionService$Controller2Callback;

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {v4, v5, p1}, Lcom/android/server/media/MediaSessionService$Controller2Callback;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/Session2Token;)V

    .line 1049
    .local v4, "callback":Lcom/android/server/media/MediaSessionService$Controller2Callback;
    new-instance v5, Landroid/media/MediaController2$Builder;

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, p1}, Landroid/media/MediaController2$Builder;-><init>(Landroid/content/Context;Landroid/media/Session2Token;)V

    new-instance v6, Landroid/os/HandlerExecutor;

    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1050
    invoke-static {v7}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v5, v6, v4}, Landroid/media/MediaController2$Builder;->setControllerCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaController2$ControllerCallback;)Landroid/media/MediaController2$Builder;

    move-result-object v5

    .line 1051
    invoke-virtual {v5}, Landroid/media/MediaController2$Builder;->build()Landroid/media/MediaController2;
    :try_end_50
    .catchall {:try_start_c .. :try_end_50} :catchall_79

    .line 1053
    nop

    .end local v4  # "callback":Lcom/android/server/media/MediaSessionService$Controller2Callback;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1054
    nop

    .line 1055
    return-void

    .line 1041
    :cond_56
    :try_start_56
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected Session2Token\'s UID, expected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " but actually="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    invoke-virtual {p1}, Landroid/media/Session2Token;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0  # "pid":I
    .end local v1  # "uid":I
    .end local v2  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "sessionToken":Landroid/media/Session2Token;
    throw v4
    :try_end_79
    .catchall {:try_start_56 .. :try_end_79} :catchall_79

    .line 1053
    .restart local v0  # "pid":I
    .restart local v1  # "uid":I
    .restart local v2  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "sessionToken":Landroid/media/Session2Token;
    :catchall_79
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public registerRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .registers 9
    .param p1, "rvc"  # Landroid/media/IRemoteVolumeController;

    .line 1718
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1719
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1720
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1721
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1723
    :try_start_13
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string/jumbo v6, "listen for volume changes"

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/media/MediaSessionService;->access$3800(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 1724
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v5, v5, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_28

    .line 1726
    :try_start_22
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1727
    nop

    .line 1728
    monitor-exit v4

    .line 1729
    return-void

    .line 1726
    :catchall_28
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0  # "pid":I
    .end local v1  # "uid":I
    .end local v2  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "rvc":Landroid/media/IRemoteVolumeController;
    throw v5

    .line 1728
    .restart local v0  # "pid":I
    .restart local v1  # "uid":I
    .restart local v2  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "rvc":Landroid/media/IRemoteVolumeController;
    :catchall_2d
    move-exception v5

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_2d

    throw v5
.end method

.method public removeSession2TokensListener(Landroid/media/session/ISession2TokensListener;)V
    .registers 11
    .param p1, "listener"  # Landroid/media/session/ISession2TokensListener;

    .line 1174
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1175
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1176
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1179
    .local v2, "token":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_3c

    .line 1180
    :try_start_13
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v5, p1}, Lcom/android/server/media/MediaSessionService;->access$2500(Lcom/android/server/media/MediaSessionService;Landroid/media/session/ISession2TokensListener;)I

    move-result v5

    .line 1181
    .local v5, "index":I
    if-ltz v5, :cond_33

    .line 1182
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1183
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_39

    .line 1185
    .local v6, "listenerRecord":Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :try_start_27
    iget-object v7, v6, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    invoke-interface {v7}, Landroid/media/session/ISession2TokensListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v6, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_32
    .catchall {:try_start_27 .. :try_end_31} :catchall_39

    .line 1188
    goto :goto_33

    .line 1186
    :catch_32
    move-exception v7

    .line 1190
    .end local v5  # "index":I
    .end local v6  # "listenerRecord":Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :cond_33
    :goto_33
    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_39

    .line 1192
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1193
    nop

    .line 1194
    return-void

    .line 1190
    :catchall_39
    move-exception v5

    :try_start_3a
    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    .end local v0  # "pid":I
    .end local v1  # "uid":I
    .end local v2  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "listener":Landroid/media/session/ISession2TokensListener;
    :try_start_3b
    throw v5
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3c

    .line 1192
    .restart local v0  # "pid":I
    .restart local v1  # "uid":I
    .restart local v2  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "listener":Landroid/media/session/ISession2TokensListener;
    :catchall_3c
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    .registers 7
    .param p1, "listener"  # Landroid/media/session/IActiveSessionsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1133
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1134
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->access$2400(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v1

    .line 1135
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    .line 1136
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_2a

    .line 1138
    .local v2, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_1c
    iget-object v3, v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    invoke-interface {v3}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_26} :catch_27
    .catchall {:try_start_1c .. :try_end_26} :catchall_2a

    .line 1141
    goto :goto_28

    .line 1139
    :catch_27
    move-exception v3

    .line 1143
    .end local v1  # "index":I
    .end local v2  # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :cond_28
    :goto_28
    :try_start_28
    monitor-exit v0

    .line 1144
    return-void

    .line 1143
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public setCallback(Landroid/media/session/ICallback;)V
    .registers 12
    .param p1, "callback"  # Landroid/media/session/ICallback;

    .line 1319
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1320
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1321
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1323
    .local v2, "token":J
    const/16 v4, 0x3ea

    :try_start_e
    invoke-static {v1, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 1327
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_b1

    .line 1328
    :try_start_1b
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1329
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, v5}, Lcom/android/server/media/MediaSessionService;->access$2900(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1330
    .local v6, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v6, :cond_8b

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v5, :cond_2e

    goto :goto_8b

    .line 1335
    :cond_2e
    invoke-static {v6, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3002(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/ICallback;)Landroid/media/session/ICallback;

    .line 1336
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The callback "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is set by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1337
    invoke-static {v9, v1}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1336
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v7

    if-nez v7, :cond_64

    .line 1339
    monitor-exit v4
    :try_end_60
    .catchall {:try_start_1b .. :try_end_60} :catchall_a6

    .line 1358
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1339
    return-void

    .line 1342
    :cond_64
    :try_start_64
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3000(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/session/ICallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    new-instance v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    invoke-direct {v8, p0, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1351
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_78} :catch_79
    .catchall {:try_start_64 .. :try_end_78} :catchall_a6

    .line 1355
    goto :goto_85

    .line 1352
    :catch_79
    move-exception v7

    .line 1353
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_7a
    const-string v8, "MediaSessionService"

    const-string v9, "Failed to set callback"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1354
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3002(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/ICallback;)Landroid/media/session/ICallback;

    .line 1356
    .end local v5  # "userId":I
    .end local v6  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v7  # "e":Landroid/os/RemoteException;
    :goto_85
    monitor-exit v4
    :try_end_86
    .catchall {:try_start_7a .. :try_end_86} :catchall_a6

    .line 1358
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1359
    nop

    .line 1360
    return-void

    .line 1331
    .restart local v5  # "userId":I
    .restart local v6  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_8b
    :goto_8b
    :try_start_8b
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only the full user can set the callback, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    monitor-exit v4
    :try_end_a2
    .catchall {:try_start_8b .. :try_end_a2} :catchall_a6

    .line 1358
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1333
    return-void

    .line 1356
    .end local v5  # "userId":I
    .end local v6  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_a6
    move-exception v5

    :try_start_a7
    monitor-exit v4
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    .end local v0  # "pid":I
    .end local v1  # "uid":I
    .end local v2  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "callback":Landroid/media/session/ICallback;
    :try_start_a8
    throw v5

    .line 1324
    .restart local v0  # "pid":I
    .restart local v1  # "uid":I
    .restart local v2  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "callback":Landroid/media/session/ICallback;
    :cond_a9
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Only Bluetooth service processes can set Callback"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0  # "pid":I
    .end local v1  # "uid":I
    .end local v2  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "callback":Landroid/media/session/ICallback;
    throw v4
    :try_end_b1
    .catchall {:try_start_a8 .. :try_end_b1} :catchall_b1

    .line 1358
    .restart local v0  # "pid":I
    .restart local v1  # "uid":I
    .restart local v2  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "callback":Landroid/media/session/ICallback;
    :catchall_b1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
    .registers 13
    .param p1, "listener"  # Landroid/media/session/IOnMediaKeyListener;

    .line 1424
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1425
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1426
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1429
    .local v2, "token":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SET_MEDIA_KEY_LISTENER"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_f1

    .line 1435
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_f9

    .line 1436
    :try_start_21
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1437
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, v5}, Lcom/android/server/media/MediaSessionService;->access$2900(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1438
    .local v6, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v6, :cond_d3

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v5, :cond_35

    goto/16 :goto_d3

    .line 1443
    :cond_35
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v7

    if-eqz v7, :cond_68

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v1, :cond_68

    .line 1444
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The media key listener cannot be reset by another app. , mOnMediaKeyListenerUid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1445
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1444
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    monitor-exit v4
    :try_end_64
    .catchall {:try_start_21 .. :try_end_64} :catchall_ee

    .line 1474
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1447
    return-void

    .line 1450
    :cond_68
    :try_start_68
    invoke-static {v6, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2602(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)Landroid/media/session/IOnMediaKeyListener;

    .line 1451
    invoke-static {v6, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3202(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I

    .line 1453
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The media key listener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is set by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1454
    invoke-static {v9, v1}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1453
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v7
    :try_end_9a
    .catchall {:try_start_68 .. :try_end_9a} :catchall_ee

    if-eqz v7, :cond_cd

    .line 1458
    :try_start_9c
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/session/IOnMediaKeyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    new-instance v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;

    invoke-direct {v8, p0, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_ad} :catch_ae
    .catchall {:try_start_9c .. :try_end_ad} :catchall_ee

    .line 1470
    goto :goto_cd

    .line 1467
    :catch_ae
    move-exception v7

    .line 1468
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_af
    const-string v8, "MediaSessionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to set death recipient "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2602(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)Landroid/media/session/IOnMediaKeyListener;

    .line 1472
    .end local v5  # "userId":I
    .end local v6  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v7  # "e":Landroid/os/RemoteException;
    :cond_cd
    :goto_cd
    monitor-exit v4
    :try_end_ce
    .catchall {:try_start_af .. :try_end_ce} :catchall_ee

    .line 1474
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1475
    nop

    .line 1476
    return-void

    .line 1439
    .restart local v5  # "userId":I
    .restart local v6  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_d3
    :goto_d3
    :try_start_d3
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only the full user can set the media key listener, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    monitor-exit v4
    :try_end_ea
    .catchall {:try_start_d3 .. :try_end_ea} :catchall_ee

    .line 1474
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1441
    return-void

    .line 1472
    .end local v5  # "userId":I
    .end local v6  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_ee
    move-exception v5

    :try_start_ef
    monitor-exit v4
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_ee

    .end local v0  # "pid":I
    .end local v1  # "uid":I
    .end local v2  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "listener":Landroid/media/session/IOnMediaKeyListener;
    :try_start_f0
    throw v5

    .line 1432
    .restart local v0  # "pid":I
    .restart local v1  # "uid":I
    .restart local v2  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "listener":Landroid/media/session/IOnMediaKeyListener;
    :cond_f1
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Must hold the SET_MEDIA_KEY_LISTENER permission."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0  # "pid":I
    .end local v1  # "uid":I
    .end local v2  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "listener":Landroid/media/session/IOnMediaKeyListener;
    throw v4
    :try_end_f9
    .catchall {:try_start_f0 .. :try_end_f9} :catchall_f9

    .line 1474
    .restart local v0  # "pid":I
    .restart local v1  # "uid":I
    .restart local v2  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "listener":Landroid/media/session/IOnMediaKeyListener;
    :catchall_f9
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V
    .registers 13
    .param p1, "listener"  # Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 1364
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1365
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1366
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1369
    .local v2, "token":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SET_VOLUME_KEY_LONG_PRESS_LISTENER"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_ed

    .line 1376
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_f5

    .line 1377
    :try_start_21
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1378
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, v5}, Lcom/android/server/media/MediaSessionService;->access$2900(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1379
    .local v6, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v6, :cond_cf

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v5, :cond_35

    goto/16 :goto_cf

    .line 1384
    :cond_35
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v7

    if-eqz v7, :cond_68

    .line 1385
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v1, :cond_68

    .line 1386
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The volume key long-press listener cannot be reset by another app , mOnVolumeKeyLongPressListener="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1388
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1386
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    monitor-exit v4
    :try_end_64
    .catchall {:try_start_21 .. :try_end_64} :catchall_ea

    .line 1418
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1390
    return-void

    .line 1393
    :cond_68
    :try_start_68
    invoke-static {v6, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$502(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 1394
    invoke-static {v6, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3102(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I

    .line 1396
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The volume key long-press listener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is set by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1397
    invoke-static {v9, v1}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1396
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v7
    :try_end_96
    .catchall {:try_start_68 .. :try_end_96} :catchall_ea

    if-eqz v7, :cond_c9

    .line 1401
    :try_start_98
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/session/IOnVolumeKeyLongPressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    new-instance v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;

    invoke-direct {v8, p0, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_a9} :catch_aa
    .catchall {:try_start_98 .. :try_end_a9} :catchall_ea

    .line 1414
    goto :goto_c9

    .line 1410
    :catch_aa
    move-exception v7

    .line 1411
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_ab
    const-string v8, "MediaSessionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to set death recipient "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1411
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$502(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 1416
    .end local v5  # "userId":I
    .end local v6  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v7  # "e":Landroid/os/RemoteException;
    :cond_c9
    :goto_c9
    monitor-exit v4
    :try_end_ca
    .catchall {:try_start_ab .. :try_end_ca} :catchall_ea

    .line 1418
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1419
    nop

    .line 1420
    return-void

    .line 1380
    .restart local v5  # "userId":I
    .restart local v6  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_cf
    :goto_cf
    :try_start_cf
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only the full user can set the volume key long-press listener, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    monitor-exit v4
    :try_end_e6
    .catchall {:try_start_cf .. :try_end_e6} :catchall_ea

    .line 1418
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1382
    return-void

    .line 1416
    .end local v5  # "userId":I
    .end local v6  # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_ea
    move-exception v5

    :try_start_eb
    monitor-exit v4
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    .end local v0  # "pid":I
    .end local v1  # "uid":I
    .end local v2  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "listener":Landroid/media/session/IOnVolumeKeyLongPressListener;
    :try_start_ec
    throw v5

    .line 1372
    .restart local v0  # "pid":I
    .restart local v1  # "uid":I
    .restart local v2  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "listener":Landroid/media/session/IOnVolumeKeyLongPressListener;
    :cond_ed
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Must hold the SET_VOLUME_KEY_LONG_PRESS_LISTENER permission."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0  # "pid":I
    .end local v1  # "uid":I
    .end local v2  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "listener":Landroid/media/session/IOnVolumeKeyLongPressListener;
    throw v4
    :try_end_f5
    .catchall {:try_start_ec .. :try_end_f5} :catchall_f5

    .line 1418
    .restart local v0  # "pid":I
    .restart local v1  # "uid":I
    .restart local v2  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "listener":Landroid/media/session/IOnVolumeKeyLongPressListener;
    :catchall_f5
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public unregisterRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .registers 9
    .param p1, "rvc"  # Landroid/media/IRemoteVolumeController;

    .line 1733
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1734
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1735
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1736
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1738
    :try_start_13
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string/jumbo v6, "listen for volume changes"

    invoke-static {v5, v6, v0, v1}, Lcom/android/server/media/MediaSessionService;->access$3800(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 1739
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v5, v5, Lcom/android/server/media/MediaSessionService;->mRemoteVolumeControllers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_28

    .line 1741
    :try_start_22
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1742
    nop

    .line 1743
    monitor-exit v4

    .line 1744
    return-void

    .line 1741
    :catchall_28
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0  # "pid":I
    .end local v1  # "uid":I
    .end local v2  # "token":J
    .end local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .end local p1  # "rvc":Landroid/media/IRemoteVolumeController;
    throw v5

    .line 1743
    .restart local v0  # "pid":I
    .restart local v1  # "uid":I
    .restart local v2  # "token":J
    .restart local p0  # "this":Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .restart local p1  # "rvc":Landroid/media/IRemoteVolumeController;
    :catchall_2d
    move-exception v5

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_2d

    throw v5
.end method
