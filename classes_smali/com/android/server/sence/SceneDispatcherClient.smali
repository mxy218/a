.class public Lcom/android/server/sence/SceneDispatcherClient;
.super Ljava/lang/Object;
.source "SceneDispatcherClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneDispatcherClient"


# instance fields
.field public active:Z

.field public client:Landroid/scene/ISceneDispatcher;

.field private deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public pid:I

.field public final scenes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/IBinder;I)V
    .registers 4
    .param p1, "_client"  # Landroid/os/IBinder;
    .param p2, "_pid"  # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/sence/SceneDispatcherClient;->scenes:Landroid/util/ArraySet;

    .line 26
    iput p2, p0, Lcom/android/server/sence/SceneDispatcherClient;->pid:I

    .line 27
    invoke-static {p1}, Landroid/scene/SceneDispatcherNative;->asInterface(Landroid/os/IBinder;)Landroid/scene/ISceneDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sence/SceneDispatcherClient;->client:Landroid/scene/ISceneDispatcher;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sence/SceneDispatcherClient;->active:Z

    .line 29
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t this:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t pid："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/sence/SceneDispatcherClient;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t client："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sence/SceneDispatcherClient;->client:Landroid/scene/ISceneDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t active："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/sence/SceneDispatcherClient;->active:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/android/server/sence/SceneDispatcherClient;->scenes:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 56
    .local v2, "scene":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\t #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x1

    .end local v0  # "i":I
    .local v4, "i":I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t\t ："

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    const-string v0, "\t\t"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .end local v2  # "scene":Ljava/lang/Integer;
    move v0, v4

    goto :goto_5d

    .line 60
    .end local v4  # "i":I
    .restart local v0  # "i":I
    :cond_9a
    return-void
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .registers 5
    .param p1, "recipient"  # Landroid/os/IBinder$DeathRecipient;

    .line 32
    iget-object v0, p0, Lcom/android/server/sence/SceneDispatcherClient;->client:Landroid/scene/ISceneDispatcher;

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/android/server/sence/SceneDispatcherClient;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-nez v1, :cond_2d

    .line 34
    :try_start_8
    iput-object p1, p0, Lcom/android/server/sence/SceneDispatcherClient;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 35
    invoke-interface {v0}, Landroid/scene/ISceneDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sence/SceneDispatcherClient;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_14} :catch_15

    .line 38
    goto :goto_2d

    .line 36
    :catch_15
    move-exception v0

    .line 37
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "linkToDeath fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SceneDispatcherClient"

    invoke-static {v2, v1}, Landroid/scene/SceneUtils;->logSceneError(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_2d
    :goto_2d
    return-void
.end method

.method public unlinkDeathRecipient()V
    .registers 4

    .line 43
    iget-object v0, p0, Lcom/android/server/sence/SceneDispatcherClient;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/sence/SceneDispatcherClient;->client:Landroid/scene/ISceneDispatcher;

    if-eqz v0, :cond_12

    .line 44
    invoke-interface {v0}, Landroid/scene/ISceneDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sence/SceneDispatcherClient;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 46
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sence/SceneDispatcherClient;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 47
    return-void
.end method
