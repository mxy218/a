.class public abstract Lcom/android/systemui/MultiListLayout$MultiListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiListLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/MultiListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultiListAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 168
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract countListItems()I
.end method

.method public abstract countSeparatedItems()I
.end method

.method public hasSeparatedItems()Z
    .registers 1

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout$MultiListAdapter;->countSeparatedItems()I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public abstract shouldBeSeparated(I)Z
.end method
