.class Lcom/android/server/inputmethod/InputMethodManagerService$Injector;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Injector"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 5576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static containsGoogleVoice(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)Z"
        }
    .end annotation

    .line 5662
    .local p0, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 5663
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 5664
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodUtils;->isGoogleVoiceInput(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5665
    const/4 v2, 0x1

    return v2

    .line 5662
    .end local v1  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5668
    .end local v0  # "i":I
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method static finishInputExt(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;)V
    .registers 7
    .param p0, "imms"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;

    .line 5589
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserWrapper()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5590
    return-void

    .line 5592
    :cond_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5594
    .local v0, "ident":J
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getMethodMap()Landroid/util/ArrayMap;

    move-result-object v2

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_3e

    .line 5595
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurClient()Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v3

    if-eqz v3, :cond_35

    if-eqz p1, :cond_35

    .line 5596
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurClient()Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v3}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_35

    .line 5599
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCaller()Lcom/android/internal/os/HandlerCaller;

    move-result-object v3

    const/16 v4, 0x26b6

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 5601
    :cond_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_10 .. :try_end_36} :catchall_3b

    .line 5603
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5604
    nop

    .line 5605
    return-void

    .line 5601
    :catchall_3b
    move-exception v3

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    .end local v0  # "ident":J
    .end local p0  # "imms":Lcom/android/server/inputmethod/InputMethodManagerService;
    .end local p1  # "client":Lcom/android/internal/view/IInputMethodClient;
    :try_start_3d
    throw v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 5603
    .restart local v0  # "ident":J
    .restart local p0  # "imms":Lcom/android/server/inputmethod/InputMethodManagerService;
    .restart local p1  # "client":Lcom/android/internal/view/IInputMethodClient;
    :catchall_3e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method static finishInputInternal(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;)V
    .registers 5
    .param p0, "imms"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "client"  # Lcom/android/internal/view/IInputMethodClient;

    .line 5627
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getMethodMap()Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 5628
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurClient()Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v1

    if-eqz v1, :cond_22

    if-eqz p1, :cond_22

    .line 5629
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurClient()Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_22

    .line 5630
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 5632
    :cond_22
    monitor-exit v0

    .line 5633
    return-void

    .line 5632
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v1
.end method

.method static handleMessageMz(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Message;)Z
    .registers 7
    .param p0, "imms"  # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p1, "msg"  # Landroid/os/Message;

    .line 5608
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x26ac

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_15

    const/16 v1, 0x26b6

    if-eq v0, v1, :cond_d

    .line 5623
    return v2

    .line 5620
    :cond_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethodClient;

    invoke-static {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$Injector;->finishInputInternal(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;)V

    .line 5621
    return v3

    .line 5611
    :cond_15
    :try_start_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_21

    move v1, v3

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodClient;->onInputShownChanged(Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_25} :catch_26

    .line 5617
    goto :goto_5e

    .line 5612
    :catch_26
    move-exception v0

    .line 5613
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got RemoteException sending onInputShownChanged("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_36

    move v2, v3

    :cond_36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") notification to pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    iget v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputMethodManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5618
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_5e
    return v3
.end method

.method static selectDefaultIMELocked(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 6
    .param p0, "imms"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5636
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getMethodMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 5638
    .local v0, "methodMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    const-string v1, "com.syntellia.fleksy.keyboard/.Fleksy"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 5639
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodUtils;->isBuildExtAndDefaultIME(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 5640
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeInnerLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 5642
    return-void

    .line 5646
    :cond_1e
    const-string v4, "com.emoji.keyboard.touchpal/com.cootek.smartinput5.TouchPalIME"

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 5647
    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodUtils;->isBuildExtAndDefaultIME(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 5648
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeInnerLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 5650
    return-void

    .line 5654
    :cond_37
    const-string v4, "com.sohu.inputmethod.sogou.meizu/com.sohu.inputmethod.sogou.SogouIME"

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 5655
    if-eqz v1, :cond_45

    .line 5656
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeInnerLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 5659
    :cond_45
    return-void
.end method

.method static setInputShownLocked(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 6
    .param p0, "imms"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5579
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getLastInputShown()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputShown()Z

    move-result v1

    if-eq v0, v1, :cond_32

    .line 5580
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputShown()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setLastInputShown(Z)V

    .line 5581
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurClient()Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 5582
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurClient()Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCaller()Lcom/android/internal/os/HandlerCaller;

    move-result-object v1

    const/16 v2, 0x26ac

    .line 5583
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputShown()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurClient()Lcom/android/server/inputmethod/InputMethodManagerService$ClientState;

    move-result-object v4

    .line 5582
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageBO(IZLjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 5586
    :cond_32
    return-void
.end method
