.class Lcom/meizu/statsrpk/service/RpkEmitterWorker$1;
.super Ljava/lang/Object;
.source "RpkEmitterWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsrpk/service/RpkEmitterWorker;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsrpk/service/RpkEmitterWorker;


# direct methods
.method constructor <init>(Lcom/meizu/statsrpk/service/RpkEmitterWorker;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker$1;->this$0:Lcom/meizu/statsrpk/service/RpkEmitterWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker$1;->this$0:Lcom/meizu/statsrpk/service/RpkEmitterWorker;

    invoke-static {p0}, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->access$000(Lcom/meizu/statsrpk/service/RpkEmitterWorker;)V

    return-void
.end method
