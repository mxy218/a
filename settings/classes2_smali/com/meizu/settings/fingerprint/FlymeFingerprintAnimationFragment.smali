.class public Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeFingerprintAnimationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;,
        Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;
    }
.end annotation


# instance fields
.field private mActionBar:Lflyme/support/v7/app/ActionBar;

.field private mContext:Landroid/content/Context;

.field private mFPAnimationDemoView:Lcom/meizu/settings/widget/AnimationVideoView;

.field private mFingerprintAnimationAdapter:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;

.field private mFingerprintAnimationDemoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

.field private mVideoName:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mFingerprintAnimationDemoList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->startFingerprintAnimation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;)Landroid/content/Context;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;)Ljava/util/ArrayList;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mFingerprintAnimationDemoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private initActionBar()V
    .registers 4

    .line 198
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mActionBar:Lflyme/support/v7/app/ActionBar;

    .line 199
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mActionBar:Lflyme/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mActionBar:Lflyme/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mActionBar:Lflyme/support/v7/app/ActionBar;

    const v1, 0x7f08008e

    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 202
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 203
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mActionBar:Lflyme/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Lflyme/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120d87

    .line 205
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/high16 v1, 0x41a00000  # 20.0f

    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 207
    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    const/16 v2, 0xa

    .line 208
    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0x13

    .line 209
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 211
    new-instance v1, Lflyme/support/v7/app/ActionBar$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lflyme/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 213
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mActionBar:Lflyme/support/v7/app/ActionBar;

    invoke-virtual {p0, v0, v1}, Lflyme/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Lflyme/support/v7/app/ActionBar$LayoutParams;)V

    return-void
.end method

.method private initData()V
    .registers 15

    .line 76
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/meizu/flyme/sdk/ContextBuilder;->build(Landroid/content/Context;ZZ)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mContext:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 78
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f03009b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03009c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 80
    iget-object v3, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mFingerprintAnimationDemoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_34

    .line 81
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_34
    const/4 v3, 0x0

    move v4, v3

    .line 83
    :goto_36
    array-length v5, v2

    if-ge v4, v5, :cond_63

    .line 84
    aget-object v5, v0, v4

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 85
    iget-object v6, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mFingerprintAnimationDemoList:Ljava/util/ArrayList;

    new-instance v13, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;

    aget-object v9, v2, v4

    aget-object v10, v5, v3

    aget-object v7, v5, v1

    iget-object v8, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {v7, v8}, Lcom/meizu/settings/utils/MzUtils;->getImgResource(Ljava/lang/String;Landroid/content/Context;)I

    move-result v11

    const/4 v7, 0x2

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    move-object v7, v13

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;Ljava/lang/String;Ljava/lang/String;II)V

    .line 85
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_63
    return-void
.end method

.method private initVideoUri()Ljava/lang/String;
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "fingerprint_animation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 108
    :goto_d
    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mFingerprintAnimationDemoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 109
    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mFingerprintAnimationDemoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;

    invoke-static {v2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;->access$100(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;)I

    move-result v2

    if-ne v2, v0, :cond_36

    .line 110
    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mFingerprintAnimationAdapter:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;

    invoke-virtual {v2, v1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;->setItemSelect(I)V

    .line 111
    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mFingerprintAnimationDemoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;

    invoke-static {v2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;->access$200(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mVideoName:Ljava/lang/String;

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 114
    :cond_39
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mVideoName:Ljava/lang/String;

    return-object p0
.end method

.method private initView()V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mView:Landroid/view/View;

    const v1, 0x7f0a02dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/AnimationVideoView;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mFPAnimationDemoView:Lcom/meizu/settings/widget/AnimationVideoView;

    .line 92
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mView:Landroid/view/View;

    const v1, 0x7f0a05c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/MzRecyclerView;

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    .line 93
    new-instance v0, Lflyme/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 95
    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/RecyclerView;->setLayoutManager(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 96
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;-><init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$1;)V

    iput-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mFingerprintAnimationAdapter:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;

    .line 97
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mFingerprintAnimationAdapter:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationAdapter;

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/MzRecyclerView;->setAdapter(Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    .line 99
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 100
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/StatusbarColorUtils;->setStatusBarDarkIcon(Landroid/app/Activity;Z)V

    .line 101
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/meizu/common/util/NavigationBarUtils;->setNavigationBarColor(Landroid/view/Window;IZ)V

    .line 102
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->setNavigationBarDarIcon(Landroid/app/Activity;Z)V

    .line 103
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->initActionBar()V

    return-void
.end method

.method private startFingerprintAnimation(Ljava/lang/String;)V
    .registers 5

    .line 118
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mFPAnimationDemoView:Lcom/meizu/settings/widget/AnimationVideoView;

    if-eqz v0, :cond_32

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 119
    iget-object v0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mFPAnimationDemoView:Lcom/meizu/settings/widget/AnimationVideoView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/raw/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/meizu/settings/widget/AnimationVideoView;->setVideoURI(Landroid/net/Uri;)V

    :cond_32
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 52
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->initData()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 58
    iget-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d01db

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .registers 1

    .line 191
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 192
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->mFPAnimationDemoView:Lcom/meizu/settings/widget/AnimationVideoView;

    if-eqz p0, :cond_a

    .line 193
    invoke-virtual {p0}, Lcom/meizu/settings/widget/AnimationVideoView;->release()V

    :cond_a
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 72
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .registers 1

    .line 186
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 65
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->initView()V

    .line 67
    invoke-direct {p0}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->initVideoUri()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;->startFingerprintAnimation(Ljava/lang/String;)V

    return-void
.end method
