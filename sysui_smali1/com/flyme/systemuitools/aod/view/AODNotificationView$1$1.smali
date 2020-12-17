.class Lcom/flyme/systemuitools/aod/view/AODNotificationView$1$1;
.super Ljava/lang/Object;
.source "AODNotificationView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
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
        "Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;)V
    .registers 2

    .line 292
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1$1;->this$1:Lcom/flyme/systemuitools/aod/view/AODNotificationView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 292
    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/flyme/systemuitools/aod/view/AODNotificationView$1$1;->compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p0

    return p0
.end method

.method public compare(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;",
            ">;",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;",
            ">;)I"
        }
    .end annotation

    .line 296
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;

    iget p0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->priority:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;

    iget v0, v0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->priority:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    if-nez p0, :cond_3a

    .line 298
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;

    iget-wide v0, p0, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->time:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;

    iget-wide p1, p1, Lcom/flyme/systemuitools/aod/view/AODNotificationView$NotificationData;->time:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    :cond_3a
    return p0
.end method
