.class public Lcom/android/server/uri/UriPermission$PersistedTimeComparator;
.super Ljava/lang/Object;
.source "UriPermission.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/uri/UriPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistedTimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/uri/UriPermission;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/uri/UriPermission;Lcom/android/server/uri/UriPermission;)I
    .registers 5

    .line 357
    iget-wide v0, p1, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    iget-wide p1, p2, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 354
    check-cast p1, Lcom/android/server/uri/UriPermission;

    check-cast p2, Lcom/android/server/uri/UriPermission;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/uri/UriPermission$PersistedTimeComparator;->compare(Lcom/android/server/uri/UriPermission;Lcom/android/server/uri/UriPermission;)I

    move-result p1

    return p1
.end method
