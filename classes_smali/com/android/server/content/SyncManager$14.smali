.class Lcom/android/server/content/SyncManager$14;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;->dumpRecentHistory(Ljava/io/PrintWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/content/SyncManager$AuthoritySyncStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/content/SyncManager;

    .line 2472
    iput-object p1, p0, Lcom/android/server/content/SyncManager$14;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/content/SyncManager$AuthoritySyncStats;Lcom/android/server/content/SyncManager$AuthoritySyncStats;)I
    .registers 8
    .param p1, "lhs"  # Lcom/android/server/content/SyncManager$AuthoritySyncStats;
    .param p2, "rhs"  # Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    .line 2476
    iget v0, p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    iget v1, p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->times:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 2477
    .local v0, "compare":I
    if-nez v0, :cond_12

    .line 2478
    iget-wide v1, p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    iget-wide v3, p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;->elapsedTime:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 2480
    :cond_12
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 2472
    check-cast p1, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    check-cast p2, Lcom/android/server/content/SyncManager$AuthoritySyncStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/content/SyncManager$14;->compare(Lcom/android/server/content/SyncManager$AuthoritySyncStats;Lcom/android/server/content/SyncManager$AuthoritySyncStats;)I

    move-result p1

    return p1
.end method
