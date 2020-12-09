.class final Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputDevicesChangedListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/input/IInputDevicesChangedListener;

.field private final mPid:I

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/IInputDevicesChangedListener;)V
    .registers 4

    .line 2303
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2304
    iput p2, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mPid:I

    .line 2305
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mListener:Landroid/hardware/input/IInputDevicesChangedListener;

    .line 2306
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 2313
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mPid:I

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$1700(Lcom/android/server/input/InputManagerService;I)V

    .line 2314
    return-void
.end method

.method public notifyInputDevicesChanged([I)V
    .registers 4

    .line 2318
    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mListener:Landroid/hardware/input/IInputDevicesChangedListener;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputDevicesChangedListener;->onInputDevicesChanged([I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2323
    goto :goto_27

    .line 2319
    :catch_6
    move-exception p1

    .line 2320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to notify process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " that input devices changed, assuming it died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputManager"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2322
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$InputDevicesChangedListenerRecord;->binderDied()V

    .line 2324
    :goto_27
    return-void
.end method
