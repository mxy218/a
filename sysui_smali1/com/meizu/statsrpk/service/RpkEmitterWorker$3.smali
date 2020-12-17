.class Lcom/meizu/statsrpk/service/RpkEmitterWorker$3;
.super Ljava/lang/Object;
.source "RpkEmitterWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsrpk/service/RpkEmitterWorker;->environmentChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsrpk/service/RpkEmitterWorker;

.field final synthetic val$changeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/statsrpk/service/RpkEmitterWorker;Ljava/lang/String;)V
    .registers 3

    .line 71
    iput-object p1, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker$3;->this$0:Lcom/meizu/statsrpk/service/RpkEmitterWorker;

    iput-object p2, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker$3;->val$changeName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker$3;->this$0:Lcom/meizu/statsrpk/service/RpkEmitterWorker;

    iget-object p0, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker$3;->val$changeName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->access$200(Lcom/meizu/statsrpk/service/RpkEmitterWorker;Ljava/lang/String;)V

    return-void
.end method
