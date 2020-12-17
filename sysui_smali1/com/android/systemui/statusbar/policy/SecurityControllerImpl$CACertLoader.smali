.class public Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;
.super Landroid/os/AsyncTask;
.source "SecurityControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CACertLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V
    .registers 2

    .line 418
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 422
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)Landroid/content/Context;

    move-result-object v1

    aget-object v2, p1, v0

    .line 423
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 422
    invoke-static {v1, v2}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_15} :catch_49
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_15} :catch_49
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_15} :catch_49

    .line 424
    :try_start_15
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v2

    invoke-interface {v2}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/StringParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_29

    const/4 v2, 0x1

    goto :goto_2a

    :cond_29
    move v2, v0

    .line 425
    :goto_2a
    new-instance v3, Landroid/util/Pair;

    aget-object v4, p1, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_3b

    if-eqz v1, :cond_3a

    .line 426
    :try_start_37
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3a} :catch_49
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3a} :catch_49
    .catch Ljava/lang/AssertionError; {:try_start_37 .. :try_end_3a} :catch_49

    :cond_3a
    return-object v3

    :catchall_3b
    move-exception v2

    .line 422
    :try_start_3c
    throw v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v3

    if-eqz v1, :cond_48

    .line 426
    :try_start_40
    invoke-virtual {v1}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v1

    :try_start_45
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_48
    :goto_48
    throw v3
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_49} :catch_49
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_49} :catch_49
    .catch Ljava/lang/AssertionError; {:try_start_45 .. :try_end_49} :catch_49

    :catch_49
    move-exception v1

    const-string v2, "SecurityController"

    const-string v3, "failed to get CA certs"

    .line 427
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/policy/-$$Lambda$SecurityControllerImpl$CACertLoader$xO5ELH-ynhsu1kwnRVzV4aHRUJ0;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$SecurityControllerImpl$CACertLoader$xO5ELH-ynhsu1kwnRVzV4aHRUJ0;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;[Ljava/lang/Integer;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 431
    new-instance p0, Landroid/util/Pair;

    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 418
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->doInBackground([Ljava/lang/Integer;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$doInBackground$0$SecurityControllerImpl$CACertLoader([Ljava/lang/Integer;)V
    .registers 4

    .line 429
    new-instance v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;-><init>(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    aput-object p1, p0, v1

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 437
    invoke-static {}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecurityController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_1c
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_36

    .line 439
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->this$0:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;)V

    :cond_36
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 418
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
