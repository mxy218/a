.class public Lcom/google/android/setupdesign/items/ProgressBarItem;
.super Lcom/google/android/setupdesign/items/Item;
.source "ProgressBarItem.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/Item;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected getDefaultLayoutResource()I
    .registers 1

    .line 42
    sget p0, Lcom/google/android/setupdesign/R$layout;->sud_items_progress_bar:I

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 2

    return-void
.end method