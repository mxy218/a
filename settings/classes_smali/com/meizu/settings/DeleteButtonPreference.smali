.class public Lcom/meizu/settings/DeleteButtonPreference;
.super Landroid/preference/Preference;
.source "DeleteButtonPreference.java"


# instance fields
.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0}, Lcom/meizu/settings/DeleteButtonPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/meizu/settings/DeleteButtonPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-direct {p0}, Lcom/meizu/settings/DeleteButtonPreference;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/DeleteButtonPreference;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/meizu/settings/DeleteButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method private init()V
    .registers 2

    const v0, 0x7f0d00b0

    .line 34
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 3

    .line 44
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x1020016

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 46
    new-instance v0, Lcom/meizu/settings/DeleteButtonPreference$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/DeleteButtonPreference$1;-><init>(Lcom/meizu/settings/DeleteButtonPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
