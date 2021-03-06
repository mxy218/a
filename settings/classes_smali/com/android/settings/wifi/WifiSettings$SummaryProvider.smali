.class Lcom/android/settings/wifi/WifiSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
.implements Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .registers 3

    .line 1224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1225
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 1226
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 1227
    new-instance p1, Lcom/android/settings/wifi/WifiSummaryUpdater;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/wifi/WifiSummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    return-void
.end method


# virtual methods
.method public onSummaryChanged(Ljava/lang/String;)V
    .registers 3

    .line 1238
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setListening(Z)V
    .registers 2

    .line 1233
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings$SummaryProvider;->mSummaryHelper:Lcom/android/settings/wifi/WifiSummaryUpdater;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSummaryUpdater;->register(Z)V

    return-void
.end method
