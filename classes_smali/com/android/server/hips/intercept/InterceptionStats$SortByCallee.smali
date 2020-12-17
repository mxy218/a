.class Lcom/android/server/hips/intercept/InterceptionStats$SortByCallee;
.super Ljava/lang/Object;
.source "InterceptionStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/intercept/InterceptionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SortByCallee"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/intercept/InterceptionStats;


# direct methods
.method constructor <init>(Lcom/android/server/hips/intercept/InterceptionStats;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/hips/intercept/InterceptionStats;

    .line 450
    iput-object p1, p0, Lcom/android/server/hips/intercept/InterceptionStats$SortByCallee;->this$0:Lcom/android/server/hips/intercept/InterceptionStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .param p1, "o1"  # Ljava/lang/Object;
    .param p2, "o2"  # Ljava/lang/Object;

    .line 452
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 453
    .local v0, "s1":Ljava/util/ArrayList;
    move-object v1, p2

    check-cast v1, Ljava/util/ArrayList;

    .line 455
    .local v1, "s2":Ljava/util/ArrayList;
    iget-object v2, p0, Lcom/android/server/hips/intercept/InterceptionStats$SortByCallee;->this$0:Lcom/android/server/hips/intercept/InterceptionStats;

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionStats;->getTotalReference(Ljava/util/ArrayList;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/hips/intercept/InterceptionStats$SortByCallee;->this$0:Lcom/android/server/hips/intercept/InterceptionStats;

    invoke-virtual {v3, v0}, Lcom/android/server/hips/intercept/InterceptionStats;->getTotalReference(Ljava/util/ArrayList;)I

    move-result v3

    sub-int/2addr v2, v3

    return v2
.end method
