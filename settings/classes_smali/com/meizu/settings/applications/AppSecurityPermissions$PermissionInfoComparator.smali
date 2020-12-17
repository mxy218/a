.class Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionInfoComparator;
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
    name = "PermissionInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionInfoComparator;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;)I
    .registers 3

    .line 603
    iget-object p0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionInfoComparator;->sCollator:Ljava/text/Collator;

    iget-object p1, p1, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    iget-object p2, p2, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 596
    check-cast p1, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;

    check-cast p2, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionInfoComparator;->compare(Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;)I

    move-result p0

    return p0
.end method
