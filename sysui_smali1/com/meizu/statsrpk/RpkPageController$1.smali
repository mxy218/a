.class Lcom/meizu/statsrpk/RpkPageController$1;
.super Ljava/lang/Object;
.source "RpkPageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsrpk/RpkPageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsrpk/RpkPageController;


# direct methods
.method constructor <init>(Lcom/meizu/statsrpk/RpkPageController;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/meizu/statsrpk/RpkPageController$1;->this$0:Lcom/meizu/statsrpk/RpkPageController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 111
    invoke-static {}, Lcom/meizu/statsrpk/RpkPageController;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clean sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/statsrpk/RpkPageController$1;->this$0:Lcom/meizu/statsrpk/RpkPageController;

    invoke-static {v2}, Lcom/meizu/statsrpk/RpkPageController;->access$400(Lcom/meizu/statsrpk/RpkPageController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkPageController$1;->this$0:Lcom/meizu/statsrpk/RpkPageController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/meizu/statsrpk/RpkPageController;->access$402(Lcom/meizu/statsrpk/RpkPageController;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
