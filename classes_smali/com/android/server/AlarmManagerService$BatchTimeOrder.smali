.class Lcom/android/server/AlarmManagerService$BatchTimeOrder;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatchTimeOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/AlarmManagerService$Batch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AlarmManagerService$Batch;Lcom/android/server/AlarmManagerService$Batch;)I
    .registers 5

    .line 848
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 849
    iget-wide p1, p2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 850
    cmp-long p1, v0, p1

    if-lez p1, :cond_a

    .line 851
    const/4 p1, 0x1

    return p1

    .line 853
    :cond_a
    if-gez p1, :cond_e

    .line 854
    const/4 p1, -0x1

    return p1

    .line 856
    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 846
    check-cast p1, Lcom/android/server/AlarmManagerService$Batch;

    check-cast p2, Lcom/android/server/AlarmManagerService$Batch;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;->compare(Lcom/android/server/AlarmManagerService$Batch;Lcom/android/server/AlarmManagerService$Batch;)I

    move-result p1

    return p1
.end method
