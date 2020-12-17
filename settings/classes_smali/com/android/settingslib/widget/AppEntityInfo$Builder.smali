.class public Lcom/android/settingslib/widget/AppEntityInfo$Builder;
.super Ljava/lang/Object;
.source "AppEntityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/widget/AppEntityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/widget/AppEntityInfo$Builder;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settingslib/widget/AppEntityInfo$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settingslib/widget/AppEntityInfo$Builder;)Ljava/lang/CharSequence;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settingslib/widget/AppEntityInfo$Builder;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->mClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/settingslib/widget/AppEntityInfo;
    .registers 3

    .line 94
    new-instance v0, Lcom/android/settingslib/widget/AppEntityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/widget/AppEntityInfo;-><init>(Lcom/android/settingslib/widget/AppEntityInfo$Builder;Lcom/android/settingslib/widget/AppEntityInfo$1;)V

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/widget/AppEntityInfo$Builder;
    .registers 2
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/AppEntityInfo$Builder;
    .registers 2
    .param p1  # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 125
    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->mClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public setSummary(Ljava/lang/CharSequence;)Lcom/android/settingslib/widget/AppEntityInfo$Builder;
    .registers 2
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 117
    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/android/settingslib/widget/AppEntityInfo$Builder;
    .registers 2
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 109
    iput-object p1, p0, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
