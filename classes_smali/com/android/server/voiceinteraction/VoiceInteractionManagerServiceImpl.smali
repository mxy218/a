.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;


# static fields
.field static final CLOSE_REASON_VOICE_INTERACTION:Ljava/lang/String; = "voiceinteraction"

.field static final TAG:Ljava/lang/String; = "VoiceInteractionServiceManager"


# instance fields
.field mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

.field final mAm:Landroid/app/IActivityManager;

.field final mAtm:Landroid/app/IActivityTaskManager;

.field mBound:Z

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mComponent:Landroid/content/ComponentName;

.field final mConnection:Landroid/content/ServiceConnection;

.field final mContext:Landroid/content/Context;

.field mDisabledShowContext:I

.field final mHandler:Landroid/os/Handler;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

.field mService:Landroid/service/voice/IVoiceInteractionService;

.field final mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

.field final mSessionComponentName:Landroid/content/ComponentName;

.field final mUser:I

.field final mValid:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;ILandroid/content/ComponentName;)V
    .registers 9

    .line 128
    const-string v0, "VoiceInteractionServiceManager"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    .line 89
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mConnection:Landroid/content/ServiceConnection;

    .line 129
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 131
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    .line 132
    iput p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    .line 133
    iput-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    .line 134
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAm:Landroid/app/IActivityManager;

    .line 135
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAtm:Landroid/app/IActivityTaskManager;

    .line 138
    const/4 p3, 0x0

    :try_start_2d
    new-instance p4, Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    invoke-direct {p4, p1, p5, v2}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d .. :try_end_38} :catch_98

    .line 146
    nop

    .line 147
    iput-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 148
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_64

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad voice interaction service: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p2}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    .line 151
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mIWindowManager:Landroid/view/IWindowManager;

    .line 152
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    .line 153
    return-void

    .line 155
    :cond_64
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    .line 156
    new-instance p1, Landroid/content/ComponentName;

    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    iget-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 157
    invoke-virtual {p5}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSessionService()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p4, p5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    .line 158
    nop

    .line 159
    const-string/jumbo p1, "window"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 158
    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mIWindowManager:Landroid/view/IWindowManager;

    .line 160
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 161
    const-string p4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, p4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p4, p5, p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 163
    return-void

    .line 139
    :catch_98
    move-exception p1

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Voice interaction service not found: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 142
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    .line 143
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mIWindowManager:Landroid/view/IWindowManager;

    .line 144
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    .line 145
    return-void
.end method


# virtual methods
.method public closeSystemDialogsLocked(Landroid/os/IBinder;)V
    .registers 4

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_b

    goto :goto_15

    .line 331
    :cond_b
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAm:Landroid/app/IActivityManager;

    const-string/jumbo v0, "voiceinteraction"

    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V

    .line 334
    nop

    .line 335
    return-void

    .line 328
    :cond_15
    :goto_15
    const-string p1, "VoiceInteractionServiceManager"

    const-string v0, "closeSystemDialogs does not match active session"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 329
    return-void

    .line 332
    :catch_1d
    move-exception p1

    .line 333
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected remote error"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public deliverNewSessionLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .registers 5

    .line 211
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_9

    goto :goto_10

    .line 215
    :cond_9
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverNewSessionLocked(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z

    .line 216
    const/4 p1, 0x1

    return p1

    .line 212
    :cond_10
    :goto_10
    const-string p1, "VoiceInteractionServiceManager"

    const-string p2, "deliverNewSession does not match active session"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 p1, 0x0

    return p1
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 378
    iget-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    if-nez p1, :cond_1c

    .line 379
    const-string p1, "  NOT VALID: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 380
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    if-nez p1, :cond_14

    .line 381
    const-string/jumbo p1, "no info"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b

    .line 383
    :cond_14
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    :goto_1b
    return-void

    .line 387
    :cond_1c
    const-string p1, "  mUser="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 388
    const-string p1, "  mComponent="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    const-string p1, "  Session service="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSessionService()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    const-string p1, "  Service info:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    new-instance p3, Landroid/util/PrintWriterPrinter;

    invoke-direct {p3, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v0, "    "

    invoke-virtual {p1, p3, v0}, Landroid/content/pm/ServiceInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 392
    const-string p1, "  Recognition service="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    const-string p1, "  Settings activity="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    const-string p1, "  Supports assist="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 395
    const-string p1, "  Supports launch from keyguard="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsLaunchFromKeyguard()Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 397
    iget p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    if-eqz p1, :cond_a1

    .line 398
    const-string p1, "  mDisabledShowContext="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    iget p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    :cond_a1
    const-string p1, "  mBound="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mService="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 402
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz p1, :cond_c3

    .line 403
    const-string p1, "  Active session:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 406
    :cond_c3
    return-void
.end method

.method public finishLocked(Landroid/os/IBinder;Z)V
    .registers 4

    .line 338
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_14

    if-nez p2, :cond_b

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_b

    goto :goto_14

    .line 342
    :cond_b
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {p1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->cancelLocked(Z)V

    .line 343
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 344
    return-void

    .line 339
    :cond_14
    :goto_14
    const-string p1, "VoiceInteractionServiceManager"

    const-string p2, "finish does not match active session"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void
.end method

.method public getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/IVoiceActionCheckCallback;",
            ")V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    const-string v1, "VoiceInteractionServiceManager"

    if-nez v0, :cond_23

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not bound to voice interaction service "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 p1, 0x0

    :try_start_1d
    invoke-interface {p2, p1}, Lcom/android/internal/app/IVoiceActionCheckCallback;->onComplete(Ljava/util/List;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    .line 192
    goto :goto_22

    .line 191
    :catch_21
    move-exception p1

    .line 193
    :goto_22
    return-void

    .line 196
    :cond_23
    :try_start_23
    invoke-interface {v0, p1, p2}, Landroid/service/voice/IVoiceInteractionService;->getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27

    .line 199
    goto :goto_2d

    .line 197
    :catch_27
    move-exception p1

    .line 198
    const-string p2, "RemoteException while calling getActiveServiceSupportedActions"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    :goto_2d
    return-void
.end method

.method public getDisabledShowContextLocked(I)I
    .registers 6

    .line 356
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 357
    if-ne p1, v0, :cond_f

    .line 361
    iget p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    return p1

    .line 358
    :cond_f
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not match active uid "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUserDisabledShowContextLocked(I)I
    .registers 6

    .line 365
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 366
    if-ne p1, v0, :cond_17

    .line 370
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->getUserDisabledShowContextLocked()I

    move-result p1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1

    .line 367
    :cond_17
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not match active uid "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hideSessionLocked()Z
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_9

    .line 204
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->hideLocked()Z

    move-result v0

    return v0

    .line 206
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public launchVoiceAssistFromKeyguard()V
    .registers 4

    .line 421
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    const-string v1, "VoiceInteractionServiceManager"

    if-nez v0, :cond_1d

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not bound to voice interaction service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void

    .line 426
    :cond_1d
    :try_start_1d
    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionService;->launchVoiceAssistFromKeyguard()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    .line 429
    goto :goto_27

    .line 427
    :catch_21
    move-exception v0

    .line 428
    const-string v2, "RemoteException while calling launchVoiceAssistFromKeyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    :goto_27
    return-void
.end method

.method notifySoundModelsChangedLocked()V
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    const-string v1, "VoiceInteractionServiceManager"

    if-nez v0, :cond_1d

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not bound to voice interaction service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void

    .line 462
    :cond_1d
    :try_start_1d
    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionService;->soundModelsChanged()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    .line 465
    goto :goto_27

    .line 463
    :catch_21
    move-exception v0

    .line 464
    const-string v2, "RemoteException while calling soundModelsChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    :goto_27
    return-void
.end method

.method public onSessionHidden(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 2

    .line 482
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->onSessionHidden()V

    .line 483
    return-void
.end method

.method public onSessionShown(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 2

    .line 477
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    invoke-virtual {p1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;->onSessionShown()V

    .line 478
    return-void
.end method

.method performDirectActionLocked(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 17

    .line 291
    move-object/from16 v7, p7

    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    const-string v1, "VoiceInteractionServiceManager"

    const/4 v8, 0x0

    if-eqz v0, :cond_4b

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    move-object v2, p1

    if-eq v2, v0, :cond_10

    goto :goto_4b

    .line 296
    :cond_10
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 297
    move v2, p4

    invoke-virtual {v0, p4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopActivityForTask(I)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    move-result-object v0

    .line 298
    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getAssistToken()Landroid/os/IBinder;

    move-result-object v2

    move-object v3, p5

    if-eq v2, v3, :cond_27

    goto :goto_42

    .line 303
    :cond_27
    :try_start_27
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object/from16 v6, p7

    invoke-interface/range {v1 .. v6}, Landroid/app/IApplicationThread;->performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_37} :catch_38

    .line 309
    goto :goto_4a

    .line 306
    :catch_38
    move-exception v0

    .line 307
    const-string v1, "Unexpected remote error"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    invoke-virtual {v7, v8}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_4a

    .line 299
    :cond_42
    :goto_42
    const-string v0, "Unknown activity to perform a direct action"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-virtual {v7, v8}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 311
    :goto_4a
    return-void

    .line 292
    :cond_4b
    :goto_4b
    const-string/jumbo v0, "performDirectActionLocked does not match active session"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v7, v8}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 294
    return-void
.end method

.method public requestDirectActionsLocked(Landroid/os/IBinder;ILandroid/os/IBinder;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 9

    .line 266
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    const-string v1, "VoiceInteractionServiceManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_44

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_c

    goto :goto_44

    .line 271
    :cond_c
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 272
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopActivityForTask(I)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    move-result-object p1

    .line 273
    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getAssistToken()Landroid/os/IBinder;

    move-result-object p2

    if-eq p2, p3, :cond_21

    goto :goto_3b

    .line 278
    :cond_21
    :try_start_21
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getApplicationThread()Landroid/app/IApplicationThread;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object p3, p3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-interface {p2, p1, p3, p4, p5}, Landroid/app/IApplicationThread;->requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_30} :catch_31

    .line 283
    goto :goto_43

    .line 280
    :catch_31
    move-exception p1

    .line 281
    const-string p2, "Unexpected remote error"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    invoke-virtual {p5, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_43

    .line 274
    :cond_3b
    :goto_3b
    const-string p1, "Unknown activity to query for direct actions"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p5, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 285
    :goto_43
    return-void

    .line 267
    :cond_44
    :goto_44
    const-string/jumbo p1, "requestDirectActionsLocked does not match active session"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p5, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 269
    return-void
.end method

.method public sessionConnectionGone(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .registers 4

    .line 470
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    monitor-enter v0

    .line 471
    :try_start_3
    iget-object p1, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->finishLocked(Landroid/os/IBinder;Z)V

    .line 472
    monitor-exit v0

    .line 473
    return-void

    .line 472
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public setDisabledShowContextLocked(II)V
    .registers 6

    .line 347
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 348
    if-ne p1, v0, :cond_f

    .line 352
    iput p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    .line 353
    return-void

    .line 349
    :cond_f
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not match active uid "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setKeepAwakeLocked(Landroid/os/IBinder;Z)V
    .registers 4

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_b

    goto :goto_16

    .line 319
    :cond_b
    iget-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAtm:Landroid/app/IActivityTaskManager;

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {p1, v0, p2}, Landroid/app/IActivityTaskManager;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 322
    nop

    .line 323
    return-void

    .line 316
    :cond_16
    :goto_16
    const-string p1, "VoiceInteractionServiceManager"

    const-string/jumbo p2, "setKeepAwake does not match active session"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 317
    return-void

    .line 320
    :catch_1f
    move-exception p1

    .line 321
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected remote error"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .registers 14

    .line 167
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    if-nez v0, :cond_21

    .line 168
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mServiceStub:Lcom/android/server/voiceinteraction/VoiceInteractionManagerService$VoiceInteractionManagerServiceStub;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    .line 170
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;-><init>(Ljava/lang/Object;Landroid/content/ComponentName;ILandroid/content/Context;Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 172
    :cond_21
    nop

    .line 173
    if-eqz p4, :cond_2e

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, v0

    goto :goto_3b

    .line 178
    :cond_2e
    const-class p4, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 179
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopVisibleActivities()Ljava/util/List;

    move-result-object v0

    move-object v6, v0

    .line 181
    :goto_3b
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->showLocked(Landroid/os/Bundle;IILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method shutdownLocked()V
    .registers 5

    .line 435
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 436
    invoke-virtual {v0, v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->cancelLocked(Z)V

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .line 440
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    if-eqz v0, :cond_14

    .line 441
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionService;->shutdown()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15

    .line 445
    :cond_14
    goto :goto_1d

    .line 443
    :catch_15
    move-exception v0

    .line 444
    const-string v2, "VoiceInteractionServiceManager"

    const-string v3, "RemoteException in shutdown"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    :goto_1d
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    if-eqz v0, :cond_2a

    .line 448
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 449
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    .line 451
    :cond_2a
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    if-eqz v0, :cond_35

    .line 452
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 454
    :cond_35
    return-void
.end method

.method public startAssistantActivityLocked(IILandroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    .registers 14

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2} :catch_4d

    const-string v1, "VoiceInteractionServiceManager"

    if-eqz v0, :cond_44

    :try_start_6
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    if-eq p3, v0, :cond_d

    goto :goto_44

    .line 248
    :cond_d
    iget-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-boolean p3, p3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-nez p3, :cond_1c

    .line 249
    const-string/jumbo p1, "startAssistantActivity not allowed on hidden session"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/16 p1, -0x5a

    return p1

    .line 252
    :cond_1c
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 253
    const/high16 p3, 0x10000000

    invoke-virtual {v4, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 254
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p3

    .line 255
    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 256
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAtm:Landroid/app/IActivityTaskManager;

    iget-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    iget v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    .line 256
    move v2, p1

    move v3, p2

    move-object v5, p5

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityTaskManager;->startAssistantActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result p1

    return p1

    .line 245
    :cond_44
    :goto_44
    const-string/jumbo p1, "startAssistantActivity does not match active session"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_4a} :catch_4d

    .line 246
    const/16 p1, -0x59

    return p1

    .line 258
    :catch_4d
    move-exception p1

    .line 259
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Unexpected remote error"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method startLocked()V
    .registers 6

    .line 409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 411
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mConnection:Landroid/content/ServiceConnection;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const v4, 0x4101001

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    .line 415
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    if-nez v0, :cond_3c

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed binding to voice interaction service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoiceInteractionServiceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_3c
    return-void
.end method

.method public startVoiceActivityLocked(IILandroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    .registers 19

    move-object v0, p0

    .line 222
    :try_start_1
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3} :catch_57

    const-string v2, "VoiceInteractionServiceManager"

    if-eqz v1, :cond_4e

    :try_start_7
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    move-object/from16 v3, p3

    if-eq v3, v1, :cond_10

    goto :goto_4e

    .line 226
    :cond_10
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-nez v1, :cond_1f

    .line 227
    const-string/jumbo v0, "startVoiceActivity not allowed on hidden session"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/16 v0, -0x64

    return v0

    .line 230
    :cond_1f
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v1, p4

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 231
    const-string v1, "android.intent.category.VOICE"

    invoke-virtual {v5, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const/high16 v1, 0x18000000

    invoke-virtual {v5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAtm:Landroid/app/IActivityTaskManager;

    iget-object v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v7, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v3, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v8, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, v0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    move v3, p1

    move v4, p2

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityTaskManager;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    return v0

    .line 223
    :cond_4e
    :goto_4e
    const-string/jumbo v0, "startVoiceActivity does not match active session"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_54} :catch_57

    .line 224
    const/16 v0, -0x63

    return v0

    .line 236
    :catch_57
    move-exception v0

    .line 237
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected remote error"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public supportsLocalVoiceInteraction()Z
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsLocalInteraction()Z

    move-result v0

    return v0
.end method
