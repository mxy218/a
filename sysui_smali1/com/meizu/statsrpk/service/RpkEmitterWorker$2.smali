.class Lcom/meizu/statsrpk/service/RpkEmitterWorker$2;
.super Ljava/lang/Object;
.source "RpkEmitterWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsrpk/service/RpkEmitterWorker;->add(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsrpk/service/RpkEmitterWorker;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$payload:Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

.field final synthetic val$rpkPkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/statsrpk/service/RpkEmitterWorker;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
    .registers 5

    .line 62
    iput-object p1, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker$2;->this$0:Lcom/meizu/statsrpk/service/RpkEmitterWorker;

    iput-object p2, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker$2;->val$appKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker$2;->val$rpkPkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker$2;->val$payload:Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker$2;->this$0:Lcom/meizu/statsrpk/service/RpkEmitterWorker;

    iget-object v1, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker$2;->val$appKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker$2;->val$rpkPkgName:Ljava/lang/String;

    iget-object p0, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker$2;->val$payload:Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    invoke-static {v0, v1, v2, p0}, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->access$100(Lcom/meizu/statsrpk/service/RpkEmitterWorker;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    return-void
.end method
