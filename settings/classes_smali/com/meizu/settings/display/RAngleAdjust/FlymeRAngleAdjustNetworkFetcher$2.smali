.class Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$2;
.super Lcom/meizu/settings/utils/VolleyRequestManager$VolleyErrorListener;
.source "FlymeRAngleAdjustNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->startFetch(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$2;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;

    invoke-direct {p0}, Lcom/meizu/settings/utils/VolleyRequestManager$VolleyErrorListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onErrorResponse(Ljava/lang/String;)V
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$2;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onErrorResponse, error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->access$200(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$2;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;

    invoke-static {p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->access$300(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;)Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 69
    iget-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$2;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;

    invoke-static {p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->access$300(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;)Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;->networkFetchFinished(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 71
    :cond_2a
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$2;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;

    invoke-static {p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->access$100(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;)V

    return-void
.end method
