.class Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoiceAssistantService.java"

# interfaces
.implements Lcom/meizu/voiceassistant/support/IVoiceAssistantService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/meizu/voiceassistant/support/IVoiceAssistantService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public displayPopWindow(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.voiceassistant.support.IVoiceAssistantService"

    .line 344
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 347
    iget-object p0, p0, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_31

    .line 348
    invoke-static {}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub;->getDefaultImpl()Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 349
    invoke-static {}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub;->getDefaultImpl()Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService;->displayPopWindow(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3b

    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 352
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3b

    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3b
    move-exception p0

    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public hidePopWindow(Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.voiceassistant.support.IVoiceAssistantService"

    .line 364
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 366
    iget-object p0, p0, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2e

    .line 367
    invoke-static {}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub;->getDefaultImpl()Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 368
    invoke-static {}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub;->getDefaultImpl()Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService;->hidePopWindow(Landroid/os/IBinder;)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_38

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 371
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_38

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_38
    move-exception p0

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public registerCallback(Ljava/lang/String;Lcom/meizu/voiceassistant/support/IVoiceAssistantCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.voiceassistant.support.IVoiceAssistantService"

    .line 305
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_17

    .line 307
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 308
    iget-object p0, p0, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_39

    .line 309
    invoke-static {}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub;->getDefaultImpl()Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 310
    invoke-static {}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub;->getDefaultImpl()Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService;->registerCallback(Ljava/lang/String;Lcom/meizu/voiceassistant/support/IVoiceAssistantCallback;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_43

    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 313
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_43

    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_43
    move-exception p0

    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public setFocuses(Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.voiceassistant.support.IVoiceAssistantService"

    .line 285
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget-object p0, p0, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_31

    .line 289
    invoke-static {}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub;->getDefaultImpl()Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 290
    invoke-static {}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub;->getDefaultImpl()Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService;->setFocuses(Ljava/lang/String;I)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3b

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 293
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3b

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3b
    move-exception p0

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public setHintText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 576
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.voiceassistant.support.IVoiceAssistantService"

    .line 578
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 581
    iget-object p0, p0, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_32

    .line 582
    invoke-static {}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub;->getDefaultImpl()Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 583
    invoke-static {}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub;->getDefaultImpl()Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService;->setHintText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3c

    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 586
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3c

    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3c
    move-exception p0

    .line 589
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public unregisterCallback(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.voiceassistant.support.IVoiceAssistantService"

    .line 325
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    iget-object p0, p0, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2e

    .line 328
    invoke-static {}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub;->getDefaultImpl()Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 329
    invoke-static {}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService$Stub;->getDefaultImpl()Lcom/meizu/voiceassistant/support/IVoiceAssistantService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/meizu/voiceassistant/support/IVoiceAssistantService;->unregisterCallback(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_38

    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 332
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_38

    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_38
    move-exception p0

    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
