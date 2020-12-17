.class Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$2;
.super Ljava/lang/Object;
.source "V3OfflineEmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->updateConfig(ZZZZJIJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;


# direct methods
.method constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$2;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$2;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$700(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$2;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$200(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$2;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$600(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->emitterUpdateConfig(Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$102(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;Z)Z

    return-void
.end method
