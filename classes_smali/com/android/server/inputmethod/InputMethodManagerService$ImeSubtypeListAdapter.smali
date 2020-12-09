.class Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImeSubtypeListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
        ">;"
    }
.end annotation


# instance fields
.field public mCheckedItem:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;I)V"
        }
    .end annotation

    .line 4290
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 4292
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 4293
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 4294
    iput p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 4295
    const-class p2, Landroid/view/LayoutInflater;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 4296
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .line 4300
    if-eqz p2, :cond_3

    goto :goto_c

    .line 4301
    :cond_3
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 4302
    :goto_c
    if-ltz p1, :cond_60

    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p1, p3, :cond_17

    goto :goto_60

    .line 4303
    :cond_17
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4304
    iget-object v0, p3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 4305
    iget-object p3, p3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 4306
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4307
    const v2, 0x1020015

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4308
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_45

    .line 4309
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4310
    const/16 p3, 0x8

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4e

    .line 4312
    :cond_45
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4313
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4314
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4316
    :goto_4e
    const p3, 0x10203d5

    .line 4317
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RadioButton;

    .line 4318
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    if-ne p1, v0, :cond_5c

    const/4 v4, 0x1

    :cond_5c
    invoke-virtual {p3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4319
    return-object p2

    .line 4302
    :cond_60
    :goto_60
    return-object p2
.end method
