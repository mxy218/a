.class Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "ActivityOptionsCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsCompatImpl"
.end annotation


# instance fields
.field private final mActivityOptions:Landroid/app/ActivityOptions;


# direct methods
.method constructor <init>(Landroid/app/ActivityOptions;)V
    .registers 2

    .line 256
    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    .line 257
    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .registers 1

    .line 262
    iget-object p0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsCompatImpl;->mActivityOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
