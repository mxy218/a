.class Lcom/android/settings/applications/ProcessStatsSummary$1;
.super Ljava/lang/Object;
.source "ProcessStatsSummary.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcessStatsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSummaryProvider(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .registers 3

    .line 162
    new-instance p0, Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-object p0
.end method
