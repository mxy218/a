.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$TACgeftYHh6_luJN2KHBXuPhYnM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroidx/preference/Preference;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$TACgeftYHh6_luJN2KHBXuPhYnM;->f$0:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$TACgeftYHh6_luJN2KHBXuPhYnM;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$TACgeftYHh6_luJN2KHBXuPhYnM;->f$0:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$TACgeftYHh6_luJN2KHBXuPhYnM;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindSummary$1(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method
