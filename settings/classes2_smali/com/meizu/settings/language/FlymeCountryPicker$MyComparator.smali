.class Lcom/meizu/settings/language/FlymeCountryPicker$MyComparator;
.super Ljava/lang/Object;
.source "FlymeCountryPicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/language/FlymeCountryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/HashMap<",
        "**>;>;"
    }
.end annotation


# instance fields
.field private mSortingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    iput-object p1, p0, Lcom/meizu/settings/language/FlymeCountryPicker$MyComparator;->mSortingKey:Ljava/lang/String;

    return-void
.end method

.method private isComparable(Ljava/lang/Object;)Z
    .registers 2

    if-eqz p1, :cond_8

    .line 457
    instance-of p0, p1, Ljava/lang/Comparable;

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 429
    check-cast p1, Ljava/util/HashMap;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/language/FlymeCountryPicker$MyComparator;->compare(Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result p0

    return p0
.end method

.method public compare(Ljava/util/HashMap;Ljava/util/HashMap;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "**>;",
            "Ljava/util/HashMap<",
            "**>;)I"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeCountryPicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 442
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeCountryPicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 447
    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeCountryPicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 448
    invoke-direct {p0, p2}, Lcom/meizu/settings/language/FlymeCountryPicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 449
    :cond_17
    invoke-direct {p0, p2}, Lcom/meizu/settings/language/FlymeCountryPicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    const/4 p0, -0x1

    return p0

    .line 453
    :cond_1f
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
