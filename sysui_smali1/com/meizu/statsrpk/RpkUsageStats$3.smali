.class Lcom/meizu/statsrpk/RpkUsageStats$3;
.super Ljava/lang/Object;
.source "RpkUsageStats.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsrpk/RpkUsageStats;->onPageHide(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsrpk/RpkUsageStats;

.field final synthetic val$pageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/statsrpk/RpkUsageStats;Ljava/lang/String;)V
    .registers 3

    .line 85
    iput-object p1, p0, Lcom/meizu/statsrpk/RpkUsageStats$3;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    iput-object p2, p0, Lcom/meizu/statsrpk/RpkUsageStats$3;->val$pageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkUsageStats$3;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkUsageStats;->access$000(Lcom/meizu/statsrpk/RpkUsageStats;)Lcom/meizu/statsrpk/RpkInstanceImpl;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 89
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkUsageStats$3;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkUsageStats;->access$000(Lcom/meizu/statsrpk/RpkUsageStats;)Lcom/meizu/statsrpk/RpkInstanceImpl;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/statsrpk/RpkUsageStats$3;->val$pageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/meizu/statsrpk/RpkInstanceImpl;->onPageStop(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
