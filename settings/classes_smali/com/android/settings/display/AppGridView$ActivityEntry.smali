.class public Lcom/android/settings/display/AppGridView$ActivityEntry;
.super Ljava/lang/Object;
.source "AppGridView.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/AppGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/display/AppGridView$ActivityEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public final info:Landroid/content/pm/ResolveInfo;

.field public final label:Ljava/lang/String;

.field private final mIconFactory:Landroid/util/IconDrawableFactory;

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/util/IconDrawableFactory;)V
    .registers 5

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->info:Landroid/content/pm/ResolveInfo;

    .line 160
    iput-object p3, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->label:Ljava/lang/String;

    .line 161
    iput-object p4, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->mIconFactory:Landroid/util/IconDrawableFactory;

    .line 162
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    iput p2, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->mUserId:I

    .line 163
    iput-object p1, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->mPM:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/display/AppGridView$ActivityEntry;)I
    .registers 2

    .line 169
    iget-object p0, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->label:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/display/AppGridView$ActivityEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 148
    check-cast p1, Lcom/android/settings/display/AppGridView$ActivityEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/display/AppGridView$ActivityEntry;->compareTo(Lcom/android/settings/display/AppGridView$ActivityEntry;)I

    move-result p0

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->info:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 174
    iget-object p0, p0, Lcom/android/settings/display/AppGridView$ActivityEntry;->label:Ljava/lang/String;

    return-object p0
.end method
