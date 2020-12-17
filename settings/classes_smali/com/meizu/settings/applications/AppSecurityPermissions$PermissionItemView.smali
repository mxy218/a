.class public Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;
.super Landroid/widget/LinearLayout;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionItemView"
.end annotation


# instance fields
.field mDialog:Landroid/app/AlertDialog;

.field mGroup:Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;

.field private mPackageName:Ljava/lang/String;

.field mPerm:Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;

.field private mShowRevokeUI:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 145
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 141
    iput-boolean p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    const/4 p1, 0x1

    .line 146
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method

.method private addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V
    .registers 3

    .line 236
    iget-boolean v0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    if-nez v0, :cond_5

    return-void

    .line 240
    :cond_5
    iget-object p0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;

    iget p0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_12

    return-void

    :cond_12
    const p0, 0x7f1211d4

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p0, 0x7f120732

    .line 261
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 196
    iget-object p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->mGroup:Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    if-eqz p1, :cond_83

    iget-object p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;

    if-eqz p1, :cond_83

    .line 197
    iget-object p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_f

    .line 198
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 200
    :cond_f
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 201
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    iget-object v1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->mGroup:Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    iget-object v1, v1, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 203
    iget-object v1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;

    iget v2, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    const/4 v3, 0x1

    if-eqz v2, :cond_36

    .line 204
    invoke-virtual {v1, p1}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_72

    :cond_36
    const/4 v2, 0x0

    .line 208
    :try_start_37
    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 209
    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_41} :catch_42

    goto :goto_46

    .line 211
    :catch_42
    iget-object p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 213
    :goto_46
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 214
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f120fe9

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    .line 216
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 220
    :goto_72
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 221
    invoke-direct {p0, v0}, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V

    .line 222
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    .line 223
    iget-object p0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_83
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 229
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 230
    iget-object p0, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_a

    .line 231
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_a
    return-void
.end method

.method public setPermission(Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)V
    .registers 10

    .line 152
    iput-object p1, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->mGroup:Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    .line 153
    iput-object p2, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;

    .line 154
    iput-boolean p6, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    .line 155
    iput-object p5, p0, Lcom/meizu/settings/applications/AppSecurityPermissions$PermissionItemView;->mPackageName:Ljava/lang/String;

    const p5, 0x7f0a053e

    .line 157
    invoke-virtual {p0, p5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/ImageView;

    const p6, 0x7f0a0541

    .line 158
    invoke-virtual {p0, p6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p6

    check-cast p6, Landroid/widget/TextView;

    .line 160
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x7f0a054e

    .line 162
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz p3, :cond_3d

    .line 164
    invoke-virtual {p1, v0}, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;->loadGroupIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p1, :cond_4a

    .line 166
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object p1, p1, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a

    :cond_3d
    const p1, 0x7f0a054f

    .line 170
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    const/4 p3, 0x0

    .line 172
    :cond_4a
    :goto_4a
    iget-object p1, p2, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    .line 173
    iget-boolean p2, p2, Lcom/meizu/settings/applications/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    if-eqz p2, :cond_73

    if-eqz p4, :cond_73

    .line 175
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 177
    invoke-static {p4, v0, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 178
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 179
    sget-object p4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {p2, p4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 182
    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object p1, p2

    .line 186
    :cond_73
    invoke-virtual {p5, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    invoke-virtual {p6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {p0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
