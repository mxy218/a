.class public Lcom/meizu/settings/display/aod/AODStyleActivity;
.super Lcom/meizu/settings/FlymeSettingsBaseActivity;
.source "AODStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;,
        Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;

.field private mClockStyle:Landroid/widget/GridView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKeepDPIContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/display/aod/AODStyleActivity;)Landroid/view/LayoutInflater;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/meizu/settings/display/aod/AODStyleActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    if-nez p1, :cond_37

    if-eqz p3, :cond_37

    const/4 p1, 0x0

    const-string p2, "aod_style"

    .line 129
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    move p3, p1

    .line 131
    :goto_c
    iget-object v0, p0, Lcom/meizu/settings/display/aod/AODStyleActivity;->mClockStyle:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-ge p3, v0, :cond_37

    .line 132
    iget-object v0, p0, Lcom/meizu/settings/display/aod/AODStyleActivity;->mClockStyle:Landroid/widget/GridView;

    invoke-virtual {v0, p3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 134
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 135
    instance-of v1, v0, Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;

    if-eqz v1, :cond_34

    .line 136
    check-cast v0, Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;

    iget-object v0, v0, Lcom/meizu/settings/display/aod/AODStyleActivity$ViewHolder;->mStyleState:Landroid/widget/CheckBox;

    if-ne p3, p2, :cond_31

    const/4 v1, 0x1

    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_34

    .line 140
    :cond_31
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_34
    :goto_34
    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    :cond_37
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 39
    invoke-super {p0, p1}, Lcom/meizu/settings/FlymeSettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 40
    invoke-static {p0, p1, p1}, Lcom/meizu/flyme/sdk/ContextBuilder;->build(Landroid/content/Context;ZZ)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/display/aod/AODStyleActivity;->mKeepDPIContext:Landroid/content/Context;

    const v0, 0x7f0d0037

    .line 41
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 43
    iget-object v0, p0, Lcom/meizu/settings/display/aod/AODStyleActivity;->mKeepDPIContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/display/aod/AODStyleActivity;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0a009c

    .line 45
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/meizu/settings/display/aod/AODStyleActivity;->mClockStyle:Landroid/widget/GridView;

    .line 46
    new-instance v0, Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;

    invoke-direct {v0, p0}, Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;-><init>(Lcom/meizu/settings/display/aod/AODStyleActivity;)V

    iput-object v0, p0, Lcom/meizu/settings/display/aod/AODStyleActivity;->mAdapter:Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;

    .line 47
    iget-object v0, p0, Lcom/meizu/settings/display/aod/AODStyleActivity;->mClockStyle:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/meizu/settings/display/aod/AODStyleActivity;->mAdapter:Lcom/meizu/settings/display/aod/AODStyleActivity$ClockStyleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p0

    .line 50
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 51
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    const p1, 0x7f1213de

    .line 52
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/ActionBar;->setTitle(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 122
    :cond_c
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
