.class public Lcom/meizu/settings/navigationandrecents/FlymeRecentsTipsPreference;
.super Landroid/preference/Preference;
.source "FlymeRecentsTipsPreference.java"


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/navigationandrecents/FlymeRecentsTipsPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    .line 28
    iget-object p0, p0, Lcom/meizu/settings/navigationandrecents/FlymeRecentsTipsPreference;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d020a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
