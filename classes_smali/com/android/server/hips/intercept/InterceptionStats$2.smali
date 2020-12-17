.class Lcom/android/server/hips/intercept/InterceptionStats$2;
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
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList<",
        "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/intercept/InterceptionStats;


# direct methods
.method constructor <init>(Lcom/android/server/hips/intercept/InterceptionStats;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/hips/intercept/InterceptionStats;

    .line 229
    iput-object p1, p0, Lcom/android/server/hips/intercept/InterceptionStats$2;->this$0:Lcom/android/server/hips/intercept/InterceptionStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTotalReference(Ljava/util/Map$Entry;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
            ">;>;)I"
        }
    .end annotation

    .line 237
    .local p1, "list":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;"
    const/4 v0, 0x0

    .line 238
    .local v0, "total":I
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;

    .line 239
    .local v2, "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    iget v3, v2, Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;->mReference:I

    add-int/2addr v0, v3

    .line 240
    .end local v2  # "info":Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;
    goto :goto_b

    .line 241
    :cond_1b
    return v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 229
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hips/intercept/InterceptionStats$2;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
            ">;>;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;",
            ">;>;)I"
        }
    .end annotation

    .line 233
    .local p1, "o1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;"
    .local p2, "o2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/hips/intercept/InterceptionStats$DetailInfo;>;>;"
    invoke-direct {p0, p2}, Lcom/android/server/hips/intercept/InterceptionStats$2;->getTotalReference(Ljava/util/Map$Entry;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/hips/intercept/InterceptionStats$2;->getTotalReference(Ljava/util/Map$Entry;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
