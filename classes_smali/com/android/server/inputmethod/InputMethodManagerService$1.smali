.class Lcom/android/server/inputmethod/InputMethodManagerService$1;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 336
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 4

    .line 338
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 339
    :try_start_5
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-boolean v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v0, :cond_1b

    .line 340
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 341
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 343
    :cond_1b
    monitor-exit p1

    .line 344
    return-void

    .line 343
    :catchall_1d
    move-exception v0

    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 347
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 350
    return-void
.end method
