.class final Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClientState"
.end annotation


# instance fields
.field final binding:Landroid/view/inputmethod/InputBinding;

.field final client:Lcom/android/internal/view/IInputMethodClient;

.field final clientDeathRecipient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;

.field curSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

.field final inputContext:Lcom/android/internal/view/IInputContext;

.field final pid:I

.field final selfReportedDisplayId:I

.field sessionRequested:Z

.field shouldPreRenderIme:Z

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;IIILcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;)V
    .registers 7

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 434
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    .line 435
    iput p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    .line 436
    iput p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    .line 437
    iput p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    .line 438
    new-instance p1, Landroid/view/inputmethod/InputBinding;

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {p2}, Lcom/android/internal/view/IInputContext;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iget p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    iget p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    const/4 p5, 0x0

    invoke-direct {p1, p5, p2, p3, p4}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/os/IBinder;II)V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    .line 439
    iput-object p6, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->clientDeathRecipient:Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;

    .line 440
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 425
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->selfReportedDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
