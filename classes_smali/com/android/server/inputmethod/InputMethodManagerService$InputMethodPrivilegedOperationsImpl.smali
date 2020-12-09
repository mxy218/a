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

    .line 5212
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;-><init>()V

    .line 5213
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5214
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 5215
    return-void
.end method


# virtual methods
.method public applyImeVisibility(Z)V
    .registers 4

    .line 5305
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V

    .line 5306
    return-void
.end method

.method public createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 5

    .line 5233
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object p1

    return-object p1
.end method

.method public hideMySoftInput(I)V
    .registers 4

    .line 5257
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V

    .line 5258
    return-void
.end method

.method public notifyUserAction()V
    .registers 3

    .line 5293
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V

    .line 5294
    return-void
.end method

.method public reportFullscreenMode(Z)V
    .registers 4

    .line 5239
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V

    .line 5240
    return-void
.end method

.method public reportPreRendered(Landroid/view/inputmethod/EditorInfo;)V
    .registers 4

    .line 5299
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;)V

    .line 5300
    return-void
.end method

.method public reportStartInput(Landroid/os/IBinder;)V
    .registers 4

    .line 5226
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 5227
    return-void
.end method

.method public setImeWindowStatus(II)V
    .registers 5

    .line 5220
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;II)V

    .line 5221
    return-void
.end method

.method public setInputMethod(Ljava/lang/String;)V
    .registers 4

    .line 5245
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 5246
    return-void
.end method

.method public setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 5

    .line 5251
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 5252
    return-void
.end method

.method public shouldOfferSwitchingToNextInputMethod()Z
    .registers 3

    .line 5287
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public showMySoftInput(I)V
    .registers 4

    .line 5263
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V

    .line 5264
    return-void
.end method

.method public switchToNextInputMethod(Z)Z
    .registers 4

    .line 5281
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)Z

    move-result p1

    return p1
.end method

.method public switchToPreviousInputMethod()Z
    .registers 3

    .line 5275
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3700(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public updateStatusIcon(Ljava/lang/String;I)V
    .registers 5

    .line 5269
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3600(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 5270
    return-void
.end method
