.class public final synthetic Lcom/android/settings/datausage/-$$Lambda$YwlDb-ChrdnT61OB-L_A63UT4To;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/datausage/-$$Lambda$YwlDb-ChrdnT61OB-L_A63UT4To;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/settings/datausage/-$$Lambda$YwlDb-ChrdnT61OB-L_A63UT4To;

    invoke-direct {v0}, Lcom/android/settings/datausage/-$$Lambda$YwlDb-ChrdnT61OB-L_A63UT4To;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/-$$Lambda$YwlDb-ChrdnT61OB-L_A63UT4To;->INSTANCE:Lcom/android/settings/datausage/-$$Lambda$YwlDb-ChrdnT61OB-L_A63UT4To;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSummaryProvider(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .registers 3

    new-instance p0, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageSummary$SummaryProvider;-><init>(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-object p0
.end method
