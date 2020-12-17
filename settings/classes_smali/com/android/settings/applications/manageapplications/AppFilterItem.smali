.class public Lcom/android/settings/applications/manageapplications/AppFilterItem;
.super Ljava/lang/Object;
.source "AppFilterItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/applications/manageapplications/AppFilterItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private final mFilterType:I
    .annotation build Lcom/android/settings/applications/manageapplications/AppFilterRegistry$FilterType;
    .end annotation
.end field

.field private final mTitle:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;II)V
    .registers 4
    .param p2  # I
        .annotation build Lcom/android/settings/applications/manageapplications/AppFilterRegistry$FilterType;
        .end annotation
    .end param
    .param p3  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p3, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    .line 40
    iput p2, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    .line 41
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/applications/manageapplications/AppFilterItem;)I
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 64
    :cond_8
    iget p0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    iget p1, p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 28
    check-cast p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->compareTo(Lcom/android/settings/applications/manageapplications/AppFilterItem;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 69
    instance-of v1, p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    if-nez v1, :cond_8

    goto :goto_21

    :cond_8
    const/4 v1, 0x1

    if-ne p0, p1, :cond_c

    return v1

    .line 75
    :cond_c
    check-cast p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 76
    iget v2, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    iget v3, p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    iget v3, p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    if-ne v2, v3, :cond_21

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    if-ne p0, p1, :cond_21

    move v0, v1

    :cond_21
    :goto_21
    return v0
.end method

.method public getFilter()Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-object p0
.end method

.method public getFilterType()I
    .registers 1

    .line 53
    iget p0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    return p0
.end method

.method public getTitle()I
    .registers 1

    .line 45
    iget p0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
