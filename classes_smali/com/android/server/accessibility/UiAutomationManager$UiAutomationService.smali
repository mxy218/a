.class Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
.super Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.source "UiAutomationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/UiAutomationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiAutomationService"
.end annotation


# instance fields
.field private final mMainHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/accessibility/UiAutomationManager;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/UiAutomationManager;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V
    .registers 23

    .line 226
    move-object v11, p0

    move-object v0, p1

    iput-object v0, v11, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    .line 227
    invoke-static {}, Lcom/android/server/accessibility/UiAutomationManager;->access$200()Landroid/content/ComponentName;

    move-result-object v2

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V

    .line 229
    move-object/from16 v0, p5

    iput-object v0, v11, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mMainHandler:Landroid/os/Handler;

    .line 230
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/UiAutomationManager;->access$100(Lcom/android/server/accessibility/UiAutomationManager;)V

    .line 259
    return-void
.end method

.method connectServiceUnknownThread()V
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/-$$Lambda$UiAutomationManager$UiAutomationService$z2oxrodQt4ZxyzsfB6p_GYgwxqk;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/-$$Lambda$UiAutomationManager$UiAutomationService$z2oxrodQt4ZxyzsfB6p_GYgwxqk;-><init>(Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method

.method public disableSelf()V
    .registers 1

    .line 300
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 274
    iget-object p1, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mContext:Landroid/content/Context;

    const-string p3, "UiAutomationManager"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 275
    :cond_b
    iget-object p1, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 276
    :try_start_e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ui Automation[eventTypes="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mEventTypes:I

    .line 277
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 276
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 278
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", notificationTimeout="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mNotificationTimeout:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 279
    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 280
    monitor-exit p1

    .line 281
    return-void

    .line 280
    :catchall_45
    move-exception p2

    monitor-exit p1
    :try_end_47
    .catchall {:try_start_e .. :try_end_47} :catchall_45

    throw p2
.end method

.method public getSoftKeyboardShowMode()I
    .registers 2

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public isAccessibilityButtonAvailable()Z
    .registers 2

    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method protected isCalledForCurrentUserLocked()Z
    .registers 2

    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public isCapturingFingerprintGestures()Z
    .registers 2

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$connectServiceUnknownThread$0$UiAutomationManager$UiAutomationService()V
    .registers 4

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_25

    .line 239
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 240
    if-nez v1, :cond_9

    const/4 v2, 0x0

    goto :goto_f

    :cond_9
    iget-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_f
    iput-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mService:Landroid/os/IBinder;

    .line 241
    iget-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mService:Landroid/os/IBinder;

    .line 242
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_22

    .line 245
    if-eqz v1, :cond_21

    .line 246
    const/4 v0, 0x0

    :try_start_17
    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 247
    iget v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mId:I

    iget-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mOverlayWindowToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0, v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->init(Landroid/accessibilityservice/IAccessibilityServiceConnection;ILandroid/os/IBinder;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_25

    .line 252
    :cond_21
    goto :goto_32

    .line 242
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw v1
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_25} :catch_25

    .line 249
    :catch_25
    move-exception v0

    .line 250
    const-string v1, "UiAutomationManager"

    const-string v2, "Error initialized connection"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 251
    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->this$0:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-static {v0}, Lcom/android/server/accessibility/UiAutomationManager;->access$100(Lcom/android/server/accessibility/UiAutomationManager;)V

    .line 253
    :goto_32
    return-void
.end method

.method public onFingerprintGesture(I)V
    .registers 2

    .line 317
    return-void
.end method

.method public onFingerprintGestureDetectionActiveChanged(Z)V
    .registers 2

    .line 314
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 303
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 306
    return-void
.end method

.method public setSoftKeyboardShowMode(I)Z
    .registers 2

    .line 286
    const/4 p1, 0x0

    return p1
.end method

.method protected supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .registers 2

    .line 269
    const/4 p1, 0x1

    return p1
.end method
