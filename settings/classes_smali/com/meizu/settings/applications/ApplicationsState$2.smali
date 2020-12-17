.class Lcom/meizu/settings/applications/ApplicationsState$2;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)I
    .registers 7

    .line 1815
    iget-wide v0, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->size:J

    iget-wide v2, p2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    cmp-long p0, v0, v2

    if-lez p0, :cond_10

    const/4 p0, -0x1

    return p0

    .line 1817
    :cond_10
    sget-object p0, Lcom/meizu/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1812
    check-cast p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    check-cast p2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/applications/ApplicationsState$2;->compare(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)I

    move-result p0

    return p0
.end method
