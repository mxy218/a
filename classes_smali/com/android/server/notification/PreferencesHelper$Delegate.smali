.class Lcom/android/server/notification/PreferencesHelper$Delegate;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/PreferencesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Delegate"
.end annotation


# static fields
.field static final DEFAULT_ENABLED:Z = true

.field static final DEFAULT_USER_ALLOWED:Z = true


# instance fields
.field mEnabled:Z

.field mPkg:Ljava/lang/String;

.field mUid:I

.field mUserAllowed:Z


# direct methods
.method constructor <init>(Ljava/lang/String;IZZ)V
    .registers 6

    .line 1951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1947
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    .line 1948
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    .line 1949
    iput-boolean v0, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    .line 1952
    iput-object p1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    .line 1953
    iput p2, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    .line 1954
    iput-boolean p3, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    .line 1955
    iput-boolean p4, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    .line 1956
    return-void
.end method


# virtual methods
.method public isAllowed(Ljava/lang/String;I)Z
    .registers 5

    .line 1959
    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    const/16 v1, -0x2710

    if-ne p2, v1, :cond_8

    goto :goto_1e

    .line 1962
    :cond_8
    iget-object v1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget p1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUid:I

    if-ne p2, p1, :cond_1d

    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mUserAllowed:Z

    if-eqz p1, :cond_1d

    iget-boolean p1, p0, Lcom/android/server/notification/PreferencesHelper$Delegate;->mEnabled:Z

    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0

    .line 1960
    :cond_1e
    :goto_1e
    return v0
.end method
