.class Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;
.super Ljava/lang/Object;
.source "V3OfflineEmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->add(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

.field final synthetic val$payload:Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;


# direct methods
.method constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
    .registers 3

    .line 134
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->val$payload:Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 137
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$100(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 138
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$900(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$200(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$800(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->emitterUpdateConfig(Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$102(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;Z)Z

    .line 140
    :cond_25
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1008(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)J

    .line 141
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add rowId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1000(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",payload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->val$payload:Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    invoke-virtual {v2}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1200(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$200(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1000(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->val$payload:Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->emitterAddEvent(Ljava/lang/String;JLcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)Z

    .line 143
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1300(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1000(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->val$payload:Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    invoke-virtual {v2}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1300(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x19

    if-lt v0, v1, :cond_a9

    .line 145
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1400(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)V

    :cond_a9
    return-void
.end method
