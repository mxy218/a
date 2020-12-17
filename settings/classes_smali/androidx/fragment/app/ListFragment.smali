.class public Landroidx/fragment/app/ListFragment;
.super Landroidx/fragment/app/Fragment;
.source "ListFragment.java"


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mList:Landroid/widget/ListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 76
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Landroidx/fragment/app/ListFragment$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/ListFragment$1;-><init>(Landroidx/fragment/app/ListFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Landroidx/fragment/app/ListFragment$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/ListFragment$2;-><init>(Landroidx/fragment/app/ListFragment;)V

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private ensureList()V
    .registers 4

    .line 349
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    return-void

    .line 352
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a4

    .line 356
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_14

    .line 357
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    goto :goto_7f

    :cond_14
    const v1, 0xff0001

    .line 359
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 360
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v1, :cond_2d

    const v1, 0x1020004

    .line 361
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->mEmptyView:Landroid/view/View;

    goto :goto_32

    :cond_2d
    const/16 v2, 0x8

    .line 363
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_32
    const v1, 0xff0002

    .line 365
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    const v1, 0xff0003

    .line 366
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    const v1, 0x102000a

    .line 367
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 368
    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_61

    if-nez v0, :cond_59

    .line 370
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 374
    :cond_59
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 378
    :cond_61
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 379
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_6f

    .line 380
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_7f

    .line 381
    :cond_6f
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7f

    .line 382
    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_7f
    :goto_7f
    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    .line 387
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 388
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_94

    const/4 v1, 0x0

    .line 390
    iput-object v1, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 391
    invoke-virtual {p0, v0}, Landroidx/fragment/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_9c

    .line 395
    :cond_94
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_9c

    const/4 v0, 0x0

    .line 396
    invoke-direct {p0, v0, v0}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    .line 399
    :cond_9c
    :goto_9c
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/fragment/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 354
    :cond_a4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Content view not yet created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setListShown(ZZ)V
    .registers 8

    .line 287
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 288
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v0, :cond_74

    .line 291
    iget-boolean v1, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    if-ne v1, p1, :cond_c

    return-void

    .line 294
    :cond_c
    iput-boolean p1, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    const v3, 0x10a0001

    const/high16 v4, 0x10a0000

    if-eqz p1, :cond_46

    if-eqz p2, :cond_33

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 297
    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 299
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 300
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 299
    invoke-static {p2, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3b

    .line 302
    :cond_33
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 303
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 305
    :goto_3b
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object p0, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_73

    :cond_46
    if-eqz p2, :cond_61

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 309
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 311
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 311
    invoke-static {p2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_69

    .line 314
    :cond_61
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 315
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 317
    :goto_69
    iget-object p1, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object p0, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_73
    return-void

    .line 289
    :cond_74
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t be used with a custom content view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 229
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 230
    iget-object p0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1  # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    .line 99
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const p3, 0xff0002

    .line 104
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 p3, 0x1

    .line 105
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p3, 0x8

    .line 106
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 p3, 0x11

    .line 107
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 109
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x101007a

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v0, 0xff0003

    .line 120
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 122
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, 0xff0001

    .line 123
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 124
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 125
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance p3, Landroid/widget/ListView;

    invoke-direct {p3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const p0, 0x102000a

    .line 129
    invoke-virtual {p3, p0}, Landroid/widget/ListView;->setId(I)V

    const/4 p0, 0x0

    .line 130
    invoke-virtual {p3, p0}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 131
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public onDestroyView()V
    .registers 3

    .line 159
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 160
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    .line 161
    iput-boolean v1, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    .line 162
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mEmptyView:Landroid/view/View;

    .line 163
    iput-object v0, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 164
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 6
    .param p1  # Landroid/widget/ListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p0, 0x0

    throw p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 150
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 151
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 239
    invoke-direct {p0}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 240
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 243
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-nez v0, :cond_15

    .line 245
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 247
    :cond_15
    iput-object p1, p0, Landroidx/fragment/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    return-void

    .line 241
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t be used with a custom content view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .registers 6
    .param p1  # Landroid/widget/ListAdapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 185
    iget-object v0, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 186
    :goto_9
    iput-object p1, p0, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 187
    iget-object v3, p0, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v3, :cond_26

    .line 188
    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    iget-boolean p1, p0, Landroidx/fragment/app/ListFragment;->mListShown:Z

    if-nez p1, :cond_26

    if-nez v0, :cond_26

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_23

    move v1, v2

    :cond_23
    invoke-direct {p0, v2, v1}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    :cond_26
    return-void
.end method

.method public setListShown(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 265
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 273
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    return-void
.end method
