.class Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 163
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onServiceDisconnected$0()V
    .registers 3

    .line 212
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityTaskManager;->setLockScreenShown(ZZ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 216
    goto :goto_b

    .line 214
    :catch_a
    move-exception v0

    .line 217
    :goto_b
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "service"  # Landroid/os/IBinder;

    .line 167
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$000(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Landroid/content/Context;

    move-result-object v2

    .line 168
    invoke-static {p2}, Lcom/android/internal/policy/IKeyguardService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$100(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;-><init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V

    iput-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 169
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->systemIsReady:Z

    if-eqz v0, :cond_ae

    .line 171
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onSystemReady()V

    .line 172
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_43

    .line 174
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v1

    iget v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setCurrentUser(I)V

    .line 177
    :cond_43
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_59

    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 178
    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    if-ne v0, v1, :cond_60

    .line 179
    :cond_59
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onStartedWakingUp()V

    .line 181
    :cond_60
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->interactiveState:I

    if-ne v0, v2, :cond_71

    .line 182
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onFinishedWakingUp()V

    .line 184
    :cond_71
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    if-eq v0, v2, :cond_85

    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 185
    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    if-ne v0, v1, :cond_97

    .line 186
    :cond_85
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;

    iget-object v3, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 187
    invoke-static {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$300(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;-><init>(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    .line 186
    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 189
    :cond_97
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->screenState:I

    if-ne v0, v2, :cond_a8

    .line 190
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onScreenTurnedOn()V

    .line 192
    :cond_a8
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$302(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 194
    :cond_ae
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->bootCompleted:Z

    if-eqz v0, :cond_bf

    .line 195
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->onBootCompleted()V

    .line 197
    :cond_bf
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    if-eqz v0, :cond_d9

    .line 198
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->occluded:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setOccluded(ZZ)V

    .line 200
    :cond_d9
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    if-nez v0, :cond_f2

    .line 201
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v0, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;->setKeyguardEnabled(Z)V

    .line 203
    :cond_f2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"  # Landroid/content/ComponentName;

    .line 208
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->mKeyguardService:Lcom/android/server/policy/keyguard/KeyguardServiceWrapper;

    .line 209
    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$200(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->access$400(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;)V

    .line 210
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$1;->this$0:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-static {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->access$500(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$1$ZQ5qG3EmC57J43br9oobeNISXyE;->INSTANCE:Lcom/android/server/policy/keyguard/-$$Lambda$KeyguardServiceDelegate$1$ZQ5qG3EmC57J43br9oobeNISXyE;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method
