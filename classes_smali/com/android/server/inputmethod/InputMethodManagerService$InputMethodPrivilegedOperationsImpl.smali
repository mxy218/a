.class final Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
.super Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputMethodPrivilegedOperationsImpl"
.end annotation


# instance fields
.field private final mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "imms"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "token"  # Landroid/os/IBinder;

    .line 5375
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;-><init>()V

    .line 5376
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5377
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 5378
    return-void
.end method


# virtual methods
.method public applyImeVisibility(Z)V
    .registers 4
    .param p1, "setVisible"  # Z

    .line 5468
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V

    .line 5469
    return-void
.end method

.method public createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 5
    .param p1, "contentUri"  # Landroid/net/Uri;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 5396
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v0

    return-object v0
.end method

.method public hideMySoftInput(I)V
    .registers 4
    .param p1, "flags"  # I

    .line 5420
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V

    .line 5421
    return-void
.end method

.method public notifyUserAction()V
    .registers 3

    .line 5456
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V

    .line 5457
    return-void
.end method

.method public reportFullscreenMode(Z)V
    .registers 4
    .param p1, "fullscreen"  # Z

    .line 5402
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V

    .line 5403
    return-void
.end method

.method public reportPreRendered(Landroid/view/inputmethod/EditorInfo;)V
    .registers 4
    .param p1, "info"  # Landroid/view/inputmethod/EditorInfo;

    .line 5462
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;)V

    .line 5463
    return-void
.end method

.method public reportStartInput(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "startInputToken"  # Landroid/os/IBinder;

    .line 5389
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 5390
    return-void
.end method

.method public setImeWindowStatus(II)V
    .registers 5
    .param p1, "vis"  # I
    .param p2, "backDisposition"  # I

    .line 5383
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2700(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;II)V

    .line 5384
    return-void
.end method

.method public setInputMethod(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"  # Ljava/lang/String;

    .line 5408
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 5409
    return-void
.end method

.method public setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 5
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "subtype"  # Landroid/view/inputmethod/InputMethodSubtype;

    .line 5414
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 5415
    return-void
.end method

.method public shouldOfferSwitchingToNextInputMethod()Z
    .registers 3

    .line 5450
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public showMySoftInput(I)V
    .registers 4
    .param p1, "flags"  # I

    .line 5426
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V

    .line 5427
    return-void
.end method

.method public switchToNextInputMethod(Z)Z
    .registers 4
    .param p1, "onlyCurrentIme"  # Z

    .line 5444
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3700(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public switchToPreviousInputMethod()Z
    .registers 3

    .line 5438
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3600(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public updateStatusIcon(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "iconId"  # I

    .line 5432
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 5433
    return-void
.end method
