.class public Lcom/android/server/notification/GlobalSortKeyComparator;
.super Ljava/lang/Object;
.source "GlobalSortKeyComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/notification/NotificationRecord;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GlobalSortComp"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I
    .registers 5

    .line 30
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGlobalSortKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalSortComp"

    if-nez v0, :cond_1e

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing left global sort key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 p1, 0x1

    return p1

    .line 34
    :cond_1e
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getGlobalSortKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing right global sort key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 p1, -0x1

    return p1

    .line 38
    :cond_3a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGlobalSortKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getGlobalSortKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 25
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/GlobalSortKeyComparator;->compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I

    move-result p1

    return p1
.end method
