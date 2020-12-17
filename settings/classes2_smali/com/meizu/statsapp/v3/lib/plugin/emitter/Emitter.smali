.class public abstract Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;
.super Ljava/lang/Object;
.source "Emitter.java"


# instance fields
.field protected emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

.field protected mContext:Landroid/content/Context;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->mContext:Landroid/content/Context;

    const-string v0, "com.meizu.statsapp.v3.emitterconfig"

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->sp:Landroid/content/SharedPreferences;

    .line 35
    new-instance p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-direct {p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    .line 36
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->readConfigFromPreference()V

    return-void
.end method

.method private readConfigFromPreference()V
    .registers 6

    .line 58
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->sp:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    const-string v3, "active"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->active:Z

    .line 59
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->sp:Landroid/content/SharedPreferences;

    const-string v3, "flushOnStart"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnStart:Z

    .line 60
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->sp:Landroid/content/SharedPreferences;

    const-string v3, "flushOnReconnect"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnReconnect:Z

    .line 61
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->sp:Landroid/content/SharedPreferences;

    const-string v3, "flushOnCharge"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushOnCharge:Z

    .line 62
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->sp:Landroid/content/SharedPreferences;

    const-string v2, "flushDelayInterval"

    const-wide/32 v3, 0x1b7740

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushDelayInterval:J

    .line 63
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->sp:Landroid/content/SharedPreferences;

    const-string v2, "flushCacheLimit"

    const/16 v3, 0x32

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushCacheLimit:I

    .line 64
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->sp:Landroid/content/SharedPreferences;

    const-string v2, "flushMobileTrafficLimit"

    const-wide/32 v3, 0x200000

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->flushMobileTrafficLimit:J

    .line 65
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->sp:Landroid/content/SharedPreferences;

    const-string v1, "neartimeInterval"

    const/4 v2, 0x5

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->neartimeInterval:I

    return-void
.end method


# virtual methods
.method public abstract add(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
.end method

.method public abstract addNeartime(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
.end method

.method public abstract addRealtime(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
.end method

.method public abstract flush()V
.end method

.method public abstract init()V
.end method

.method public updateConfig(ZZZZJIJI)V
    .registers 13

    .line 44
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "active"

    .line 45
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p1, "flushOnStart"

    .line 46
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p1, "flushOnReconnect"

    .line 47
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p1, "flushOnCharge"

    .line 48
    invoke-interface {v0, p1, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p1, "flushDelayInterval"

    .line 49
    invoke-interface {v0, p1, p5, p6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string p1, "flushMobileTrafficLimit"

    .line 50
    invoke-interface {v0, p1, p8, p9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string p1, "flushCacheLimit"

    .line 51
    invoke-interface {v0, p1, p7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "neartimeInterval"

    .line 52
    invoke-interface {v0, p1, p10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->readConfigFromPreference()V

    return-void
.end method
