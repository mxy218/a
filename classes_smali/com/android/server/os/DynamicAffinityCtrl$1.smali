.class Lcom/android/server/os/DynamicAffinityCtrl$1;
.super Ljava/lang/Object;
.source "DynamicAffinityCtrl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/DynamicAffinityCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/os/DynamicAffinityCtrl$Stats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/server/os/DynamicAffinityCtrl$Stats;Lcom/android/server/os/DynamicAffinityCtrl$Stats;)I
    .registers 6
    .param p1, "sta"  # Lcom/android/server/os/DynamicAffinityCtrl$Stats;
    .param p2, "stb"  # Lcom/android/server/os/DynamicAffinityCtrl$Stats;

    .line 68
    invoke-static {p1}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$000(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)I

    move-result v0

    invoke-static {p1}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$100(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
    .local v0, "ta":I
    invoke-static {p2}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$000(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)I

    move-result v1

    invoke-static {p2}, Lcom/android/server/os/DynamicAffinityCtrl$Stats;->access$100(Lcom/android/server/os/DynamicAffinityCtrl$Stats;)I

    move-result v2

    add-int/2addr v1, v2

    .line 70
    .local v1, "tb":I
    if-eq v0, v1, :cond_1a

    .line 71
    if-le v0, v1, :cond_18

    const/4 v2, -0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x1

    :goto_19
    return v2

    .line 73
    :cond_1a
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 65
    check-cast p1, Lcom/android/server/os/DynamicAffinityCtrl$Stats;

    check-cast p2, Lcom/android/server/os/DynamicAffinityCtrl$Stats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/os/DynamicAffinityCtrl$1;->compare(Lcom/android/server/os/DynamicAffinityCtrl$Stats;Lcom/android/server/os/DynamicAffinityCtrl$Stats;)I

    move-result p1

    return p1
.end method
