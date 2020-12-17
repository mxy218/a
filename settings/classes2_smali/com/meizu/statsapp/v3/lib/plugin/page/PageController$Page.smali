.class public Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;
.super Ljava/lang/Object;
.source "PageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Page"
.end annotation


# instance fields
.field public elapse:J

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;

.field public time:J


# direct methods
.method constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;Ljava/lang/String;JJ)V
    .registers 7

    .line 81
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;->name:Ljava/lang/String;

    .line 83
    iput-wide p3, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;->time:J

    .line 84
    iput-wide p5, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;->elapse:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;->elapse:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
