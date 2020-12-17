.class Lcom/meizu/statsrpk/RpkUsageStats$1;
.super Ljava/lang/Object;
.source "RpkUsageStats.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsrpk/RpkUsageStats;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsrpk/RpkUsageStats;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$pageName:Ljava/lang/String;

.field final synthetic val$properties:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/meizu/statsrpk/RpkUsageStats;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    .line 61
    iput-object p1, p0, Lcom/meizu/statsrpk/RpkUsageStats$1;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    iput-object p2, p0, Lcom/meizu/statsrpk/RpkUsageStats$1;->val$eventName:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/statsrpk/RpkUsageStats$1;->val$pageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/meizu/statsrpk/RpkUsageStats$1;->val$properties:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkUsageStats$1;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkUsageStats;->access$000(Lcom/meizu/statsrpk/RpkUsageStats;)Lcom/meizu/statsrpk/RpkInstanceImpl;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 65
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkUsageStats$1;->this$0:Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkUsageStats;->access$000(Lcom/meizu/statsrpk/RpkUsageStats;)Lcom/meizu/statsrpk/RpkInstanceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/statsrpk/RpkUsageStats$1;->val$eventName:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/statsrpk/RpkUsageStats$1;->val$pageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/meizu/statsrpk/RpkUsageStats$1;->val$properties:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, p0}, Lcom/meizu/statsrpk/RpkInstanceImpl;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_17
    return-void
.end method
