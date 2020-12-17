.class public Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;
.super Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;
.source "LocalEmitter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalEmitter"


# instance fields
.field private emitterWorker:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    new-instance p2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-direct {p2, p1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;-><init>(Landroid/content/Context;Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;)V

    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;->emitterWorker:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    return-void
.end method


# virtual methods
.method public add(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
    .registers 5

    .line 41
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->isActive()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 43
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;->emitterWorker:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->add(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    :cond_27
    return-void
.end method

.method public addNeartime(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
    .registers 5

    .line 57
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNeartime payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->isActive()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 59
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;->emitterWorker:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->addNeartime(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    :cond_27
    return-void
.end method

.method public addRealtime(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
    .registers 5

    .line 49
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRealtime payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->isActive()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 51
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;->emitterWorker:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->addRealtime(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    :cond_27
    return-void
.end method

.method public flush()V
    .registers 3

    .line 65
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;->TAG:Ljava/lang/String;

    const-string v1, "flush"

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;->emitterWorker:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->flush()V

    return-void
.end method

.method public init()V
    .registers 3

    .line 23
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;->emitterWorker:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->init()V

    return-void
.end method

.method public setEncrypt(Z)V
    .registers 2

    .line 76
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;->emitterWorker:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->setEncrypt(Z)V

    return-void
.end method

.method public updateConfig(ZZZZJIJI)V
    .registers 11

    .line 32
    invoke-super/range {p0 .. p10}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->updateConfig(ZZZZJIJI)V

    .line 36
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitter;->emitterWorker:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-virtual {p1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->updateConfig(Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;)V

    return-void
.end method
