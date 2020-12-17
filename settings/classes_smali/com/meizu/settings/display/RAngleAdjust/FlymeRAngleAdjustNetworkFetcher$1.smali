.class Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$1;
.super Lcom/meizu/settings/utils/VolleyRequestManager$VolleyListener;
.source "FlymeRAngleAdjustNetworkFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->startFetch(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$NetworkFetchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/settings/utils/VolleyRequestManager$VolleyListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$1;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;

    invoke-direct {p0}, Lcom/meizu/settings/utils/VolleyRequestManager$VolleyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .line 58
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$1;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;

    invoke-static {v0, p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->access$000(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher$1;->this$0:Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;

    invoke-static {p0}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;->access$100(Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustNetworkFetcher;)V

    return-void
.end method
