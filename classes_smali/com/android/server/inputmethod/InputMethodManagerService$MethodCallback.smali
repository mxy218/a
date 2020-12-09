.class final Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;
.super Lcom/android/internal/view/IInputSessionCallback$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MethodCallback"
.end annotation


# instance fields
.field private final mChannel:Landroid/view/InputChannel;

.field private final mMethod:Lcom/android/internal/view/IInputMethod;

.field private final mParentIMMS:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V
    .registers 4

    .line 1361
    invoke-direct {p0}, Lcom/android/internal/view/IInputSessionCallback$Stub;-><init>()V

    .line 1362
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mParentIMMS:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1363
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mMethod:Lcom/android/internal/view/IInputMethod;

    .line 1364
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mChannel:Landroid/view/InputChannel;

    .line 1365
    return-void
.end method


# virtual methods
.method public sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V
    .registers 7

    .line 1369
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1371
    :try_start_4
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mParentIMMS:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 1373
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1374
    nop

    .line 1375
    return-void

    .line 1373
    :catchall_12
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
