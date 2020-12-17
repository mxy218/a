.class public Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;
.super Ljava/lang/Object;
.source "FlymeTrustAgentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/security/FlymeTrustAgentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrustAgentComponentInfo"
.end annotation


# instance fields
.field admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field componentName:Landroid/content/ComponentName;

.field summary:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/meizu/settings/security/FlymeTrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-void
.end method
