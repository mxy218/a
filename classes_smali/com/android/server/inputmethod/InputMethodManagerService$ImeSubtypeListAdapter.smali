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
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "textViewResourceId"  # I
    .param p4, "checkedItem"  # I
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

    .line 4449
    .local p3, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 4451
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    .line 4452
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    .line 4453
    iput p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 4454
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 4455
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "position"  # I
    .param p2, "convertView"  # Landroid/view/View;
    .param p3, "parent"  # Landroid/view/ViewGroup;

    .line 4459
    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_d

    .line 4460
    :cond_4
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mTextViewResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_d
    nop

    .line 4461
    .local v0, "view":Landroid/view/View;
    if-ltz p1, :cond_71

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_19

    goto :goto_71

    .line 4462
    :cond_19
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mItemsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 4463
    .local v1, "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImeName:Ljava/lang/CharSequence;

    .line 4464
    .local v2, "imeName":Ljava/lang/CharSequence;
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeName:Ljava/lang/CharSequence;

    .line 4465
    .local v3, "subtypeName":Ljava/lang/CharSequence;
    const v4, 0x1020014

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4466
    .local v4, "firstTextView":Landroid/widget/TextView;
    const v5, 0x1020015

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 4468
    .local v5, "secondTextView":Landroid/widget/TextView;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_57

    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v8, "com.sohu.inputmethod.sogou.meizu/com.sohu.inputmethod.sogou.SogouIME"

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4d

    goto :goto_57

    .line 4474
    :cond_4d
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4475
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4476
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5f

    .line 4471
    :cond_57
    :goto_57
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4472
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4478
    :goto_5f
    const v6, 0x10203d5

    .line 4479
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 4480
    .local v6, "radioButton":Landroid/widget/RadioButton;
    iget v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    if-ne p1, v8, :cond_6d

    const/4 v7, 0x1

    :cond_6d
    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 4481
    return-object v0

    .line 4461
    .end local v1  # "item":Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v2  # "imeName":Ljava/lang/CharSequence;
    .end local v3  # "subtypeName":Ljava/lang/CharSequence;
    .end local v4  # "firstTextView":Landroid/widget/TextView;
    .end local v5  # "secondTextView":Landroid/widget/TextView;
    .end local v6  # "radioButton":Landroid/widget/RadioButton;
    :cond_71
    :goto_71
    return-object v0
.end method
