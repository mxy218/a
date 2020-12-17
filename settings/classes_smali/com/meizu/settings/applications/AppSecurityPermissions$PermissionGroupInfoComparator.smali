.class Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionGroupInfoComparator;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionGroupInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 580
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionGroupInfoComparator;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;)I
    .registers 7

    .line 586
    iget v0, p1, Landroid/content/pm/PermissionGroupInfo;->flags:I

    iget v1, p2, Landroid/content/pm/PermissionGroupInfo;->flags:I

    xor-int/2addr v1, v0

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, -0x1

    if-eqz v1, :cond_10

    and-int/lit8 p0, v0, 0x1

    if-eqz p0, :cond_f

    move v2, v3

    :cond_f
    return v2

    .line 589
    :cond_10
    iget v0, p1, Landroid/content/pm/PermissionGroupInfo;->priority:I

    iget v1, p2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    if-eq v0, v1, :cond_1a

    if-le v0, v1, :cond_19

    move v2, v3

    :cond_19
    return v2

    .line 592
    :cond_1a
    iget-object p0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionGroupInfoComparator;->sCollator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    iget-object p2, p2, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 579
    check-cast p1, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    check-cast p2, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionGroupInfoComparator;->compare(Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;)I

    move-result p0

    return p0
.end method
